.class Lcom/android/email/activity/FindLocationActivity$CancelGPSTimerTask;
.super Ljava/util/TimerTask;
.source "FindLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/FindLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CancelGPSTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/FindLocationActivity;


# direct methods
.method constructor <init>(Lcom/android/email/activity/FindLocationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/FindLocationActivity$CancelGPSTimerTask;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$CancelGPSTimerTask;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-static {v2}, Lcom/android/email/activity/FindLocationActivity;->access$000(Lcom/android/email/activity/FindLocationActivity;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$CancelGPSTimerTask;->this$0:Lcom/android/email/activity/FindLocationActivity;

    iget-object v3, p0, Lcom/android/email/activity/FindLocationActivity$CancelGPSTimerTask;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-static {v3}, Lcom/android/email/activity/FindLocationActivity;->access$100(Lcom/android/email/activity/FindLocationActivity;)Landroid/location/Location;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/activity/FindLocationActivity;->access$200(Lcom/android/email/activity/FindLocationActivity;Landroid/location/Location;)Lcom/android/email/activity/FindLocationActivity$LocationData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "location-char"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v2, "location-string"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$CancelGPSTimerTask;->this$0:Lcom/android/email/activity/FindLocationActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/email/activity/FindLocationActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$CancelGPSTimerTask;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-virtual {v2}, Lcom/android/email/activity/FindLocationActivity;->finish()V

    return-void

    :cond_0
    const-string v2, "location-char"

    iget-object v3, v0, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataChar:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v2, "location-string"

    iget-object v3, v0, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
