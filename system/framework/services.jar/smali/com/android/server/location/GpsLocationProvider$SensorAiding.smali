.class Lcom/android/server/location/GpsLocationProvider$SensorAiding;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorAiding"
.end annotation


# static fields
.field private static final ACCURACY_INDEX:I = 0x2

.field private static final ALTITUDE_INDEX:I = 0x2

.field private static final BEARING_INDEX:I = 0x0

.field private static final LATITUDE_INDEX:I = 0x0

.field private static final LONGITUDE_INDEX:I = 0x1

.field private static final SENSORAIDING_DR_ENABLE:Z = false

.field private static final SENSORAIDING_FORCECALL_CHECK_AHEAD_TIME:J = 0xc8L

.field private static final SENSORAIDING_FORCECALL_ENTRY_INTERVAL:J = 0x5dcL

.field private static final SENSORAIDING_FORCECALL_KEEP_INTERVAL:J = 0x3e8L

.field private static final SENSORAIDING_LOGGING:Ljava/lang/String; = "GpsLogging"

.field private static final SENSORAIDING_LOGGING_TEMP:Ljava/lang/String; = "DynamicAccuracyValue"

.field private static final SENSORAIDING_LPP_CHANGED_FULLPOWER:I = 0x3

.field private static final SENSORAIDING_LPP_CHANGED_LOWPOWER:I = 0x1

.field private static final SENSORAIDING_LPP_INVALID:I = -0x1

.field private static final SENSORAIDING_LPP_OPERATION_MODE_MAX:I = 0x4

.field private static final SENSORAIDING_LPP_RETAINED_FULLPOWER:I = 0x2

.field private static final SENSORAIDING_LPP_RETAINED_LOWPOWER:I = 0x0

.field private static final SENSORAIDING_OPMODE_MAX:I = 0x2

.field private static final SENSORAIDING_OPMODE_PEDESTRIAN:I = 0x0

.field private static final SENSORAIDING_OPMODE_UNKNOWN:I = -0x1

.field private static final SENSORAIDING_OPMODE_VEHICLE:I = 0x1

.field private static final SENSOR_PACKET_ARRAY_SIZE:I = 0x8

.field private static final SENSOR_PACKET_MEMBER_SIZE:I = 0x4

.field private static final SENSOR_SAMPLING_RATE:I = 0xea60

.field private static final SENSOR_SAMPLING_TIME:I = 0x3c

.field private static final SPEED_INDEX:I = 0x1


# instance fields
.field private mAccAccuracy:I

.field private mAccPacket:[[F

.field private mAccRecent:[F

.field private mDeliverLocation:[D

.field private mDeliverLocationExt:[F

.field private mGyrAccuracy:I

.field private mGyrPacket:[[F

.field private mGyrRecent:[F

.field private mGyroSupported:Z

.field private mLPPCurrentMode:I

.field private mLPPIsInStop:Z

.field private mLPPPreviousMode:I

.field private mLPPTest_PositionMode:I

.field private mMagAccuracy:I

.field private mMagPacket:[[F

.field private mMagRecent:[F

.field private mNmeaAlti:D

.field private mNmeaAltiDiff:D

.field private mNmeaDate:J

.field private mNmeaEW:C

.field private mNmeaHeading:F

.field private mNmeaLat:D

.field private mNmeaLon:D

.field private mNmeaNS:C

.field private mNmeaOrgGGA:Ljava/lang/String;

.field private mNmeaOrgGLL:Ljava/lang/String;

.field private mNmeaOrgRMC:Ljava/lang/String;

.field private mNmeaOrgVTG:Ljava/lang/String;

.field private mNmeaSpeed:F

.field private mNmeaUTC:J

.field private mNmeaValid:C

.field private mNmeaVirGGA:Ljava/lang/String;

.field private mNmeaVirGLL:Ljava/lang/String;

.field private mNmeaVirLOG:Ljava/lang/String;

.field private mNmeaVirRMC:Ljava/lang/String;

.field private mNmeaVirVTG:Ljava/lang/String;

.field private mOriAccuracy:I

.field private mOriPacket:[[F

.field private mOriRecent:[F

.field private mReportNmeaCallFlag:I

.field private mRequestLocation:[D

.field private mRequestLocationExt:[F

.field private mRequestValid:[I

.field private mSensorAidingFlags:I

.field private mSensorAidingIsPedestrian:Z

.field private mSensorAidingIsValid:Z

.field private mSensorAidingIsVehicle:Z

.field private mSensorAidingLogging:I

.field private mSensorAidingOpMode:I

.field private mSensorAidingSetting:I

.field private mSensorPacketIndex:I

.field private mSensorPreviousSampledTime:J

.field private mSensorSamplingIntervalTime:[J

.field private mSensorSystemTime:[J

.field private mSnrs_SensorAiding:[F

.field private mSvAzimuths_SensorAiding:[F

.field private mSvCountSatInUse:I

.field private mSvCountUsed_SensorAiding:I

.field private mSvCountView_SensorAiding:I

.field private mSvElevations_SensorAiding:[F

.field private mSvMasks_SensorAiding:[I

.field private mSvs_SensorAiding:[I

.field private mTimeIntervalForceCall:J

.field private mTimeStampLastReportedLocation:J

.field private mTimeStampLastReportedNmea:J

.field private mTimeUTCLastReportedLocation:J

.field private final sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

.field private final sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

.field private final sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final sensorOrientationListener:Landroid/hardware/SensorEventListener;

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagRecent:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriRecent:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccPacket:[[F

    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagPacket:[[F

    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriPacket:[[F

    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrPacket:[[F

    new-array v0, v6, [J

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    new-array v0, v6, [J

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedNmea:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvs_SensorAiding:[I

    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSnrs_SensorAiding:[F

    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvElevations_SensorAiding:[F

    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvAzimuths_SensorAiding:[F

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountView_SensorAiding:I

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsVehicle:Z

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAlti:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    iput-char v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    iput-char v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    iput-char v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaValid:C

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaHeading:F

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$2;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$3;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method private SensorAidingActivateAllSensor(Z)V
    .locals 5

    const/4 v3, 0x1

    const v4, 0xea60

    if-eq p1, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingActivateAllSensor : Gyroscope sensor is NOT supported"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-char v3, v2, v1

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_1

    :cond_0
    const-string v3, "%02X\r\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    aget-char v3, v2, v1

    const/16 v4, 0x24

    if-eq v3, v4, :cond_2

    aget-char v3, v2, v1

    xor-int/2addr v3, v0

    int-to-char v0, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private SensorAidingDeactivateAllSensor(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingDeactivateAllSensor : No registered sensorManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_4
    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    goto :goto_0
.end method

.method private SensorAidingDeliverSensorPacket()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccPacket:[[F

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagPacket:[[F

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriPacket:[[F

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    invoke-static/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->access$3700(Lcom/android/server/location/GpsLocationProvider;[[F[[F[[F[J[J)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAiding LPP : Not Supported Mode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    :cond_0
    return-void

    :pswitch_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Not Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Keep GPS OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$3800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-ne v0, v7, :cond_1

    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeactivateAllSensor(Z)V

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0, v6}, Lcom/android/server/location/GpsLocationProvider;->access$3802(Lcom/android/server/location/GpsLocationProvider;Z)Z

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$3900(Lcom/android/server/location/GpsLocationProvider;)Z

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4000(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    invoke-static {v0, v7, v1}, Lcom/android/server/location/GpsLocationProvider;->access$4100(Lcom/android/server/location/GpsLocationProvider;II)V

    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Turn GPS OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Already GPS Turned OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Keep GPS ON"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$3800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0, v7}, Lcom/android/server/location/GpsLocationProvider;->access$3802(Lcom/android/server/location/GpsLocationProvider;Z)Z

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0, v6}, Lcom/android/server/location/GpsLocationProvider;->access$2502(Lcom/android/server/location/GpsLocationProvider;I)I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$2402(Lcom/android/server/location/GpsLocationProvider;J)J

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$4202(Lcom/android/server/location/GpsLocationProvider;J)J

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0, v6}, Lcom/android/server/location/GpsLocationProvider;->access$3802(Lcom/android/server/location/GpsLocationProvider;Z)Z

    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : native_start failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingActivateAllSensor(Z)V

    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Turn GPS ON"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAiding LPP : Already GPS Turned ON"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private SensorAidingDeliverSvStatus()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$3600(Lcom/android/server/location/GpsLocationProvider;)V

    return-void
.end method

.method private SensorAidingDeregister()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeactivateAllSensor(Z)V

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2200(Lcom/android/server/location/GpsLocationProvider;)V

    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingDeregister : Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private SensorAidingGetAccuracy()F
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingGetAltitde()D
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private SensorAidingGetBearing()F
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingGetFlags()I
    .locals 1

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    return v0
.end method

.method private SensorAidingGetLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private SensorAidingGetLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private SensorAidingGetOpMode()I
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsVehicle:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    :goto_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsVehicle:Z

    if-ne v0, v1, :cond_1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    goto :goto_0
.end method

.method private SensorAidingGetSpeed()F
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingGetValid()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingIncreaseUTC()V
    .locals 27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    move-wide/from16 v19, v0

    const-wide/16 v3, 0x2710

    div-long v11, v21, v3

    const-wide/16 v3, 0x2710

    rem-long v3, v21, v3

    const-wide/16 v5, 0x64

    div-long v13, v3, v5

    const-wide/16 v3, 0x64

    rem-long v17, v21, v3

    const-wide/16 v3, 0x2710

    div-long v9, v19, v3

    const-wide/16 v3, 0x2710

    rem-long v3, v19, v3

    const-wide/16 v5, 0x64

    div-long v15, v3, v5

    const-wide/16 v3, 0x64

    rem-long v23, v19, v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    const-wide/16 v3, 0x7d0

    add-long v3, v3, v23

    long-to-int v3, v3

    const-wide/16 v4, 0x1

    sub-long v4, v15, v4

    long-to-int v4, v4

    long-to-int v5, v9

    long-to-int v6, v11

    long-to-int v7, v13

    const-wide/16 v25, 0x1

    add-long v25, v25, v17

    move-wide/from16 v0, v25

    long-to-int v8, v0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    int-to-long v0, v3

    move-wide/from16 v23, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v15, v3

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v9, v3

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v11, v3

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v13, v3

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v17, v0

    const-wide/16 v3, 0x2710

    mul-long/2addr v3, v11

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v13

    add-long/2addr v3, v5

    add-long v3, v3, v17

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    const-wide/16 v3, 0x2710

    mul-long/2addr v3, v9

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v15

    add-long/2addr v3, v5

    add-long v3, v3, v23

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    return-void
.end method

.method private SensorAidingKeepOriginalNmea(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedNmea:J

    const-string v2, "$GPGGA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    const-string v2, "[,*]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    aget-object v2, v0, v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v0, v7

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    :cond_0
    move-object p1, v1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    const-string v2, "$GPRMC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_5

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    const-string v2, "[,*]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    :cond_3
    aget-object v2, v0, v6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    :cond_4
    move-object p1, v1

    goto :goto_0

    :cond_5
    const-string v2, "$GPVTG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_6

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    move-object p1, v1

    goto :goto_0

    :cond_6
    const-string v2, "$GPGLL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    move-object p1, v1

    goto :goto_0
.end method

.method private SensorAidingLocationChanged(IDDDFFFJ)V
    .locals 15

    const/4 v2, 0x6

    new-array v5, v2, [I

    const-string v2, "RawGPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    float-to-double v6, v0

    const-wide v13, 0x400ccccccccccccdL

    mul-double/2addr v6, v13

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p11

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    const/4 v3, 0x0

    aput-wide p2, v2, v3

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    const/4 v3, 0x1

    aput-wide p4, v2, v3

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    const/4 v3, 0x2

    aput-wide p6, v2, v3

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    const/4 v3, 0x0

    aput p9, v2, v3

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    const/4 v3, 0x1

    const v4, 0x40666666

    mul-float v4, v4, p8

    aput v4, v2, v3

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    const/4 v3, 0x2

    aput p10, v2, v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    move-wide/from16 v0, p11

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v5, v2

    const/4 v2, 0x2

    const/4 v3, 0x5

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    const/4 v2, 0x3

    const/16 v3, 0xb

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    const/4 v2, 0x4

    const/16 v3, 0xc

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    const/4 v2, 0x5

    const/16 v3, 0xd

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v5, v2

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    if-eqz v2, :cond_0

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v8, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    invoke-static/range {v2 .. v9}, Lcom/android/server/location/GpsLocationProvider;->access$3200(Lcom/android/server/location/GpsLocationProvider;[D[F[IJII)V

    return-void

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private SensorAidingMakeCompensatedNmea()V
    .locals 5

    const-wide/16 v3, 0x3e8

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    return-void
.end method

.method private SensorAidingMakeSensorPacket()V
    .locals 14

    const/4 v1, 0x0

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    if-ne v0, v4, :cond_2

    :cond_0
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAidingMakeSensorPacket : Not Ready ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    const/16 v4, 0x8

    if-lt v0, v4, :cond_3

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    :cond_3
    const/4 v13, 0x0

    :goto_1
    const/4 v0, 0x4

    if-ge v13, v0, :cond_4

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccPacket:[[F

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F

    aget v4, v4, v13

    aput v4, v0, v13

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagPacket:[[F

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagRecent:[F

    aget v4, v4, v13

    aput v4, v0, v13

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriPacket:[[F

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriRecent:[F

    aget v4, v4, v13

    aput v4, v0, v13

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrPacket:[[F

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F

    aget v4, v4, v13

    aput v4, v0, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    aput-wide v5, v0, v4

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    cmp-long v0, v4, v11

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aput-wide v11, v0, v4

    :goto_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-wide v4, v0, v4

    iput-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_5

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeliverSensorPacket()V

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    iget-wide v9, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    add-long/2addr v6, v9

    const-wide/16 v9, 0xc8

    sub-long/2addr v6, v9

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedNmea:J

    const-wide/16 v9, 0x1f4

    add-long/2addr v6, v9

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const-string v0, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SensorAidingMakeSensorPacket : Call reportLocation() forcefully : SystemTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Last : Systemtime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UTC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    add-long v11, v4, v6

    move-wide v4, v2

    move-wide v6, v2

    move v9, v8

    move v10, v8

    invoke-static/range {v0 .. v12}, Lcom/android/server/location/GpsLocationProvider;->access$4400(Lcom/android/server/location/GpsLocationProvider;IDDDFFFJ)V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-wide v5, v5, v6

    iget-wide v9, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    sub-long/2addr v5, v9

    aput-wide v5, v0, v4

    goto/16 :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    cmp-long v0, v0, v11

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    goto/16 :goto_0
.end method

.method private SensorAidingMakeVirtualNmea()V
    .locals 5

    const-wide/16 v3, 0x3e8

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingIncreaseUTC()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    goto :goto_0
.end method

.method private SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    :goto_1
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;J)V

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@SENAD,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    goto :goto_1
.end method

.method private SensorAidingRegister()V
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    const/4 v1, 0x2

    aput v3, v0, v1

    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountView_SensorAiding:I

    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingActivateAllSensor(Z)V

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "GpsLogging"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    const-string v1, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAidingRegister : Logging is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    if-nez v0, :cond_0

    const-string v0, "OFF"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$2100(Lcom/android/server/location/GpsLocationProvider;I)V

    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingSupportInversePortraitMode(I)V

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRotationChanged()V

    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingRegister : Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "ON"

    goto :goto_0
.end method

.method private SensorAidingReportLocation(IDDDFFFJ)V
    .locals 8

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_pdr_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-eq v2, v4, :cond_0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRegister()V

    :goto_0
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SensorAidingReportLocation : SensorAiding setting has been changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeregister()V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const-wide/16 v4, 0x5dc

    iput-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    :cond_3
    invoke-direct/range {p0 .. p12}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingLocationChanged(IDDDFFFJ)V

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRequestLocation()V

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAccuracy()F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x4072c00000000000L

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-wide/16 v5, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/server/location/GpsLocationProvider;->access$2402(Lcom/android/server/location/GpsLocationProvider;J)J

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SensorAidingReportLocation : LOCATION_INVALID SensorAiding\'s accuracy is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    if-nez p1, :cond_9

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeVirtualNmea()V

    :cond_5
    :goto_3
    const-string v4, "RawGGA"

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    const-string v4, "RawRMC"

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    const-string v4, "RawVTG"

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    const-string v4, "RawGLL"

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    if-nez p1, :cond_7

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$2600(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/location/GpsLocationProvider;->access$2502(Lcom/android/server/location/GpsLocationProvider;I)I

    const-string v4, "GpsLocationProvider"

    const-string v5, "SensorAidingReportLocation : Set mTTFF = 1 to be sent an intent GPS_FIX_CHANGE_ACTION"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v4, 0x1f

    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    cmpl-float v4, v3, p10

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v5, 0x2

    const/high16 v6, 0x41f0

    add-float/2addr v6, v3

    aput v6, v4, v5

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    const-string v4, "GpsLocationProvider"

    const-string v5, "SensorAidingReportLocation : Bypass raw GPS"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeCompensatedNmea()V

    goto :goto_3
.end method

.method private SensorAidingReportNmea(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingReportNmea : Invalid "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingKeepOriginalNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private SensorAidingReportSvStatus(I)V
    .locals 8

    const/4 v7, 0x1

    const/16 v4, 0x20

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeliverSvStatus()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    aget v2, v2, v6

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2800(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v3

    aget v3, v3, v0

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v7, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    aget v2, v2, v6

    if-eqz v2, :cond_4

    if-le v1, v6, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2800(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvs_SensorAiding:[I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSnrs_SensorAiding:[F

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3000(Lcom/android/server/location/GpsLocationProvider;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvElevations_SensorAiding:[F

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3100(Lcom/android/server/location/GpsLocationProvider;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvAzimuths_SensorAiding:[F

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    const/4 v4, 0x3

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountView_SensorAiding:I

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    :cond_5
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    if-ne v2, v7, :cond_6

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    aget v2, v2, v6

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    aget v2, v2, v6

    if-nez v2, :cond_0

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    aput v5, v2, v6

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    goto/16 :goto_0
.end method

.method private SensorAidingRequestLocation()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;[D[F[I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    const-string v0, "AidGPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    aget-wide v2, v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    aget-wide v2, v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    aget-wide v2, v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v1, v0, v5

    const v2, 0x3e8e38e4

    mul-float/2addr v1, v2

    aput v1, v0, v5

    return-void
.end method

.method private SensorAidingRotationChanged()V
    .locals 4

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SensorAidingRotationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1, v0}, Lcom/android/server/location/GpsLocationProvider;->access$3400(Lcom/android/server/location/GpsLocationProvider;I)V

    :cond_0
    return-void
.end method

.method private SensorAidingStartNavigating()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPTest_PositionMode:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_pdr_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRegister()V

    :cond_0
    return-void
.end method

.method private SensorAidingStopNavigating()Z
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeregister()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    return v0
.end method

.method private SensorAidingSupportInversePortraitMode(I)V
    .locals 3

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAidingSupportInversePortraitMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/GpsLocationProvider;->access$3500(Lcom/android/server/location/GpsLocationProvider;I)V

    return-void
.end method

.method private SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;
    .locals 24

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v19

    if-eqz v19, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetOpMode()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    return-object v3

    :cond_1
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v3, p1

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLatitude()D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v7, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLatitude()D

    move-result-wide v19

    int-to-double v0, v7

    move-wide/from16 v21, v0

    sub-double v4, v19, v21

    mul-int/lit8 v19, v7, 0x64

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    const-wide/high16 v19, 0x404e

    mul-double v4, v4, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v19, v0

    add-double v19, v19, v4

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmpg-double v19, v19, v21

    if-gez v19, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    const/16 v19, 0x53

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLongitude()D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v7, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLongitude()D

    move-result-wide v19

    int-to-double v0, v7

    move-wide/from16 v21, v0

    sub-double v4, v19, v21

    mul-int/lit8 v19, v7, 0x64

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    const-wide/high16 v19, 0x404e

    mul-double v4, v4, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v19, v0

    add-double v19, v19, v4

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmpg-double v19, v19, v21

    if-gez v19, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    const/16 v19, 0x57

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAltitde()D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    move-wide/from16 v21, v0

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAlti:D

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetBearing()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaHeading:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetSpeed()F

    move-result v19

    const v20, 0x40666666

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    const-string v19, "%.6f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v19, "%.6f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAlti:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v19, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const-string v19, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    move/from16 v22, v0

    const v23, 0x3fed0e56

    div-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaHeading:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-nez p1, :cond_8

    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAccuracy()F

    move-result v22

    const/high16 v23, 0x42c8

    div-float v22, v22, v23

    const/high16 v23, 0x4000

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v19, "%06d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%06d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPGGA,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",1,00,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",M,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",M,,*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPRMC,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "A"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",,,A*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPVTG,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",T,,M,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",N,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",K*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPGLL,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",A*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    move-object/from16 p1, v0

    :cond_5
    :goto_3
    move-object/from16 v3, p1

    goto/16 :goto_0

    :cond_6
    const/16 v19, 0x4e

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    goto/16 :goto_1

    :cond_7
    const/16 v19, 0x45

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    goto/16 :goto_2

    :cond_8
    const-string v19, "[,*]"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v19, "$GPGGA"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    const/16 v19, 0x0

    aget-object p1, v8, v19

    const/4 v6, 0x1

    :goto_4
    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v6, v0, :cond_9

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :pswitch_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :pswitch_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :pswitch_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :pswitch_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    :pswitch_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    :pswitch_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_a
    const-string v19, "$GPRMC"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    const/16 v19, 0x0

    aget-object p1, v8, v19

    const/4 v6, 0x1

    :goto_6
    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v6, v0, :cond_b

    packed-switch v6, :pswitch_data_1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :pswitch_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",A"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :pswitch_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :pswitch_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :pswitch_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :pswitch_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_7

    :pswitch_c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_7

    :pswitch_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_7

    :cond_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_c
    const-string v19, "$GPVTG"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    const/16 v19, 0x0

    aget-object p1, v8, v19

    const/4 v6, 0x1

    :goto_8
    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v6, v0, :cond_d

    sparse-switch v6, :sswitch_data_0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :sswitch_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :sswitch_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :sswitch_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_e
    const-string v19, "$GPGLL"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    const/16 v19, 0x0

    aget-object p1, v8, v19

    const/4 v6, 0x1

    :goto_a
    array-length v0, v8

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v6, v0, :cond_f

    packed-switch v6, :pswitch_data_2

    :pswitch_e
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :pswitch_f
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :pswitch_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :pswitch_11
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :pswitch_12
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :pswitch_13
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",A"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_f
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_e
        :pswitch_13
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetFlags()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D
    .locals 2

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D
    .locals 2

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D
    .locals 2

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAltitde()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetSpeed()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetBearing()F

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAccuracy()F

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportSvStatus(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRotationChanged()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeSensorPacket()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagRecent:[F

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriRecent:[F

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingStartNavigating()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingStopNavigating()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;IDDDFFFJ)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportLocation(IDDDFFFJ)V

    return-void
.end method
