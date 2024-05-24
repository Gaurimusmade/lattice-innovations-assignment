const Hospital = require("../services/hospitalService");

//1.API for fetching psychiatrists and patient details for a hospital.
module.exports.details = async (req, res) => {
  try {
    const hospitalId = req.params.hospitalId;
    const hospitalResults = await Hospital.hospitalResults(hospitalId);
    if (hospitalResults.length === 0) {
      return res.status(404).json({ message: "Hospital not found" });
    }
    const hospitalName = hospitalResults[0].name;
    const psychiatristResults = await Hospital.psychiatristResults(hospitalId);
    const psychiatrists = psychiatristResults.map((psychiatrist) => ({
      id: psychiatrist.id,
      name: psychiatrist.name,
    }));
    // Get patient count for each psychiatrist
    const patientCounts = await Promise.all(
      psychiatrists.map(async (psychiatrist) => {
        const patientCountResults = await Hospital.patientCountResults(
          psychiatrist.id
        );
        return {
          ...psychiatrist,
          patientCount: patientCountResults[0].patient_count,
        };
      })
    );
    const totalPsychiatrists = psychiatrists.length;
    const totalPatients = patientCounts.reduce(
      (acc, curr) => acc + curr.patientCount,
      0
    );

    res.status(200).json({
      hospitalName,
      totalPsychiatrists,
      totalPatients,
      PsychiatristDetails: patientCounts,
    });
  } catch (err) {
    res.status(500).json({ error: "Internal server error" });
  }
};
