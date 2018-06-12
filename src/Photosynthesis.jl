module Photosynthesis

using Unitful
using Parameters
using Mixers
using SimpleRoots

include("constants.jl")
include("parameters.jl")
include("jarvis.jl")
include("soilmoisture.jl")
include("photosynthesis.jl")
include("stomatal_conductance.jl")
include("energy_balance.jl")

export phototranspiration!,
       run_phototrans!,
       photosynthesis!,
       stomatal_conductance!,
       soil_water_conductance!,
       extremes!,
       co2_compensation_point,
       rubisco_compensation_point,
       rubisco_regeneration,
       rubisco_limited_rate,
       transport_limited_rate,
       calc_slope,
       max_electron_transport_rate,
       max_rubisco_activity,
       calc_decoupling,
       leaftemp,
       gsdiva,
       cmolar,
       ball_berry!,
       jarvis!,
       shape_gs,
       psil_gs!,
       respiration,
       model_init!,
       model_update!,
       converge_tleaf!,
       vjmax_water,
       evapotranspiration,
       penman_monteith,
       factor_conductance,
       radiation_conductance,
       boundary_conductance_free,
       boundary_conductance_forced,
       saturated_vapour_pressure,
       grashof_number,
       latent_heat_water_vapour,
       saturated_vapour_pressure,
       yingping_radiation_conductance,
       forced_boundary_conductance,
       free_boundary_conductance,
       grashof_number,
       arrhenius,
       penman_monteith

export AbstractCompensation, BadgerCollatzCompensation, BernacchiCompensation,
       AbstractJarvisCO2, JarvisNoCO2, JarvisLinearCO2, JarvisNonlinearCO2,
       AbstractJarvisVPD, JarvisHyperbolicVPD, JarvisLohammerVPD,
       JarvisFractionDeficitVPD, JarvisLinearDeclineVPD,
       AbstractJarvisLight, JarvisLight, 
       AbstractJarvisTemp, JarvisNoTemp, JarvisTemp1, JarvisTemp2,
       AbstractStomatalConductance, BallBerryStomatalConductance,
       LeuningStomatalConductance, MedlynStomatalConductance,
       ThreeParStomatalConductance, TuzetStomatalConductance,
       AbstractJmax, AbstractVcmax, AbstractVcJmax,
       Jmax, NoOptimumVcmax, OptimumVcmax, VcJmax, DukeVcJmax,
       AbstractRubiscoRegen, RubiscoRegen,
       AbstractRespiration, Respiration, AcclimatizedRespiration,
       AbstractGSShape, HardMinimumGS, HyperbolicMinimumGS,
       AbstractRadiationConductance, YingPingRadiationConductance,
       AbstractBoundaryConductance, BoundaryConductance,
       AbstractDecoupling, McNaughtonJarvisDecoupling, NoDecoupling,
       AbstractSoilData, AbstractDeficitSoilData, AbstractContentSoilData,
       DeficitSoilData, ContentSoilData, SimulatedSoilData, PotentialSoilData, NoSoilData,
       AbstractPotentialDependence, LinearPotentialDependence, ZhouPotentialDependence, NoPotentialDependence,
       AbstractSoilMethod, VolumetricSoilMethod, ConstantSoilMethod,
       DeficitSoilMethod, PotentialSoilMethod, EmaxSoilMethod, TuzetSoilMethod,
       AbstractPhotoModel, AbstractBallBerryModel, AbstractMaespaModel, BallBerryModel, 
       TuzetModel, EmaxModel, JarvisModel,
       FvCBPhoto, EnergyBalance,
       PhotoVars, EmaxVars, TuzetVars, BallBerryVars, JarvisVars
end # module
