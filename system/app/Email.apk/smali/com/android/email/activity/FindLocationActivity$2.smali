.class Lcom/android/email/activity/FindLocationActivity$2;
.super Ljava/lang/Object;
.source "FindLocationActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/FindLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/FindLocationActivity;


# direct methods
.method constructor <init>(Lcom/android/email/activity/FindLocationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_0

    const-string v2, "FindLocation >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLocationChanged - Latitude Logitude["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-static {v2}, Lcom/android/email/activity/FindLocationActivity;->access$400(Lcom/android/email/activity/FindLocationActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-static {v2}, Lcom/android/email/activity/FindLocationActivity;->access$400(Lcom/android/email/activity/FindLocationActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-static {v2}, Lcom/android/email/activity/FindLocationActivity;->access$400(Lcom/android/email/activity/FindLocationActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->disableCompass()V

    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-static {v2}, Lcom/android/email/activity/FindLocationActivity;->access$000(Lcom/android/email/activity/FindLocationActivity;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-static {v2, p1}, Lcom/android/email/activity/FindLocationActivity;->access$200(Lcom/android/email/activity/FindLocationActivity;Landroid/location/Location;)Lcom/android/email/activity/FindLocationActivity$LocationData;

    move-result-object v0

    const-string v2, "location-char"

    iget-object v3, v0, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataChar:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v2, "location-string"

    iget-object v3, v0, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/email/activity/FindLocationActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-virtual {v2}, Lcom/android/email/activity/FindLocationActivity;->finish()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-static {v0}, Lcom/android/email/activity/FindLocationActivity;->access$300(Lcom/android/email/activity/FindLocationActivity;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
