.class public Lcom/android/email/activity/FindLocationActivity;
.super Lcom/google/android/maps/MapActivity;
.source "FindLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/FindLocationActivity$LocationData;,
        Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;,
        Lcom/android/email/activity/FindLocationActivity$CancelGPSTimerTask;
    }
.end annotation


# instance fields
.field private isFromMap:Z

.field private final mLocationListenerForGPS:Landroid/location/LocationListener;

.field private final mLocationListenerForNetwork:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMapController:Lcom/google/android/maps/MapController;

.field private mMapView:Lcom/google/android/maps/MapView;

.field private mMarkerOverlay:Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;

.field private mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

.field private mNetworkLocation:Landroid/location/Location;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSelectBtn:Landroid/widget/Button;

.field private mTimer:Ljava/util/Timer;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    new-instance v0, Lcom/android/email/activity/FindLocationActivity$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/FindLocationActivity$2;-><init>(Lcom/android/email/activity/FindLocationActivity;)V

    iput-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationListenerForGPS:Landroid/location/LocationListener;

    new-instance v0, Lcom/android/email/activity/FindLocationActivity$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/FindLocationActivity$3;-><init>(Lcom/android/email/activity/FindLocationActivity;)V

    iput-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationListenerForNetwork:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/FindLocationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/FindLocationActivity;->stopReceivingLocationUpdates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/FindLocationActivity;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mNetworkLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/FindLocationActivity;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/FindLocationActivity;->mNetworkLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/FindLocationActivity;Landroid/location/Location;)Lcom/android/email/activity/FindLocationActivity$LocationData;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/email/activity/FindLocationActivity;->getAddressFromLocation(Landroid/location/Location;)Lcom/android/email/activity/FindLocationActivity$LocationData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/FindLocationActivity;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/FindLocationActivity;)Lcom/google/android/maps/MyLocationOverlay;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    return-object v0
.end method

.method private getAddressFromGeoPoint(Lcom/google/android/maps/GeoPoint;)Lcom/android/email/activity/FindLocationActivity$LocationData;
    .locals 19

    new-instance v13, Lcom/android/email/activity/FindLocationActivity$LocationData;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/email/activity/FindLocationActivity$LocationData;-><init>(Lcom/android/email/activity/FindLocationActivity;)V

    if-nez p1, :cond_0

    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    int-to-double v15, v6

    const-wide v17, 0x412e848000000000L

    div-double v2, v15, v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    int-to-double v15, v6

    const-wide v17, 0x412e848000000000L

    div-double v4, v15, v17

    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v6}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v9, 0x0

    :try_start_0
    const-string v6, "FindLocation >>"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v6, v15}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    :goto_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Address;

    invoke-virtual {v7}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v12

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v8, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_2
    if-gt v11, v12, :cond_1

    invoke-virtual {v7, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v15, 0x20

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v13, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataString:Ljava/lang/String;

    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v15, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-direct {v6, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v15, ","

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v6, "<a href = %s>%s</a>"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v14, v15, v16

    const/16 v16, 0x1

    aput-object v14, v15, v16

    invoke-static {v6, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    iput-object v6, v13, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataChar:Ljava/lang/CharSequence;

    goto/16 :goto_0
.end method

.method private getAddressFromLocation(Landroid/location/Location;)Lcom/android/email/activity/FindLocationActivity$LocationData;
    .locals 17

    new-instance v13, Lcom/android/email/activity/FindLocationActivity$LocationData;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/email/activity/FindLocationActivity$LocationData;-><init>(Lcom/android/email/activity/FindLocationActivity;)V

    if-nez p1, :cond_0

    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v6}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v9, 0x0

    :try_start_0
    const-string v6, "FindLocation >>"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v6, v15}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    :goto_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Address;

    invoke-virtual {v7}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v12

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v8, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_2
    if-gt v11, v12, :cond_1

    invoke-virtual {v7, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v15, 0x20

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v13, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataString:Ljava/lang/String;

    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v15, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-direct {v6, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v15, ","

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v6, "<a href = %s>%s</a>"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v14, v15, v16

    const/16 v16, 0x1

    aput-object v14, v15, v16

    invoke-static {v6, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    iput-object v6, v13, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataChar:Ljava/lang/CharSequence;

    goto/16 :goto_0
.end method

.method private getBestProvider()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "gps"

    :cond_0
    const-string v2, "FindLocation >>"

    invoke-static {v2, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getGeoPointFromLocation(Landroid/location/Location;)Lcom/google/android/maps/GeoPoint;
    .locals 6

    const-wide v4, 0x412e848000000000L

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    goto :goto_0
.end method

.method private initializeLocationManager()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/FindLocationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    :cond_0
    return-void
.end method

.method private showToast(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/FindLocationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method

.method private startReceivingLocationUpdates()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x1f4

    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationListenerForNetwork:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x1f4

    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationListenerForGPS:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    return-void

    :catch_0
    move-exception v6

    const-string v0, "FindLocation >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to request location update, ignore \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v6

    const-string v0, "FindLocation >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v6

    const-string v0, "FindLocation >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to request location update, ignore \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v6

    const-string v0, "FindLocation >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private stopReceivingLocationUpdates()V
    .locals 4

    iget-object v1, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationListenerForGPS:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v1, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationListenerForNetwork:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FindLocation >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to remove location listners, ignore \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/email/activity/FindLocationActivity;->mMarkerOverlay:Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;

    invoke-virtual {v5}, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->getPixelPoint()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v4, v5, v6}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/FindLocationActivity;->stopReceivingLocationUpdates()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/email/activity/FindLocationActivity;->getAddressFromGeoPoint(Lcom/google/android/maps/GeoPoint;)Lcom/android/email/activity/FindLocationActivity$LocationData;

    move-result-object v0

    const-string v5, "location-char"

    iget-object v6, v0, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataChar:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v5, "location-string"

    iget-object v6, v0, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataString:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v2}, Lcom/android/email/activity/FindLocationActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/email/activity/FindLocationActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-interface {v4, v5, v6}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f10014f
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v5, p0, Lcom/android/email/activity/FindLocationActivity;->isFromMap:Z

    if-eqz v5, :cond_0

    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/FindLocationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    if-lt v4, v1, :cond_1

    move v3, v4

    :goto_0
    if-gt v4, v1, :cond_2

    move v2, v4

    :goto_1
    iget-object v5, p0, Lcom/android/email/activity/FindLocationActivity;->mMarkerOverlay:Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;

    new-instance v6, Landroid/graphics/Point;

    div-int/lit8 v7, v3, 0x2

    add-int/lit16 v8, v2, -0x82

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->setPixelPoint(Landroid/graphics/Point;)V

    const v5, 0x7f0802ee

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/email/activity/FindLocationActivity;->showToast(II)V

    :cond_0
    return-void

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    if-gt v4, v1, :cond_4

    move v3, v4

    :goto_2
    if-lt v4, v1, :cond_5

    move v2, v4

    :goto_3
    goto :goto_1

    :cond_4
    move v3, v1

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/email/activity/FindLocationActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v11}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-direct {p0}, Lcom/android/email/activity/FindLocationActivity;->initializeLocationManager()V

    invoke-virtual {p0}, Lcom/android/email/activity/FindLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v6, "com.android.email.intent.extra.is_from_map"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/email/activity/FindLocationActivity;->isFromMap:Z

    iget-boolean v6, p0, Lcom/android/email/activity/FindLocationActivity;->isFromMap:Z

    if-eqz v6, :cond_1

    const v6, 0x7f040065

    invoke-virtual {p0, v6}, Lcom/android/email/activity/FindLocationActivity;->setContentView(I)V

    const v6, 0x7f10014f

    invoke-virtual {p0, v6}, Lcom/android/email/activity/FindLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mSelectBtn:Landroid/widget/Button;

    const v6, 0x7f10014e

    invoke-virtual {p0, v6}, Lcom/android/email/activity/FindLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/maps/MapView;

    iput-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mSelectBtn:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapController:Lcom/google/android/maps/MapController;

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6, v7}, Lcom/google/android/maps/MapView;->setSatellite(Z)V

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6, v7}, Lcom/google/android/maps/MapView;->setStreetView(Z)V

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6, v11}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v6

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lcom/google/android/maps/MapController;->setZoom(I)I

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v3

    new-instance v6, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v7, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-direct {v6, p0, v7}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v6}, Lcom/google/android/maps/MyLocationOverlay;->disableCompass()V

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v6}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    invoke-virtual {p0}, Lcom/android/email/activity/FindLocationActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v6, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;

    const v7, 0x7f020336

    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v10

    add-int/lit16 v10, v10, -0x82

    div-int/lit8 v10, v10, 0x2

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v6, p0, v7, v8}, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;-><init>(Lcom/android/email/activity/FindLocationActivity;ILandroid/graphics/Point;)V

    iput-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMarkerOverlay:Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMarkerOverlay:Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/email/activity/FindLocationActivity;->getBestProvider()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v6, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mMapController:Lcom/google/android/maps/MapController;

    invoke-direct {p0, v2}, Lcom/android/email/activity/FindLocationActivity;->getGeoPointFromLocation(Landroid/location/Location;)Lcom/google/android/maps/GeoPoint;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    :cond_0
    const v6, 0x7f0802ee

    invoke-direct {p0, v6, v11}, Lcom/android/email/activity/FindLocationActivity;->showToast(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v7, 0x7f0802ec

    invoke-virtual {p0, v7}, Lcom/android/email/activity/FindLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v7, Lcom/android/email/activity/FindLocationActivity$1;

    invoke-direct {v7, p0}, Lcom/android/email/activity/FindLocationActivity$1;-><init>(Lcom/android/email/activity/FindLocationActivity;)V

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct {p0}, Lcom/android/email/activity/FindLocationActivity;->startReceivingLocationUpdates()V

    new-instance v5, Lcom/android/email/activity/FindLocationActivity$CancelGPSTimerTask;

    invoke-direct {v5, p0}, Lcom/android/email/activity/FindLocationActivity$CancelGPSTimerTask;-><init>(Lcom/android/email/activity/FindLocationActivity;)V

    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    iput-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mTimer:Ljava/util/Timer;

    iget-object v6, p0, Lcom/android/email/activity/FindLocationActivity;->mTimer:Ljava/util/Timer;

    const-wide/32 v7, 0x9c40

    invoke-virtual {v6, v5, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080203

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const v0, 0x7f0802ef

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v2
.end method

.method protected onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/FindLocationActivity;->stopReceivingLocationUpdates()V

    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableCompass()V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_3
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/FindLocationActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity;->mMapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity;->mMarkerOverlay:Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/email/activity/FindLocationActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->setPixelPoint(Landroid/graphics/Point;)V

    const v2, 0x7f0802ee

    invoke-direct {p0, v2, v1}, Lcom/android/email/activity/FindLocationActivity;->showToast(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    return-void
.end method
