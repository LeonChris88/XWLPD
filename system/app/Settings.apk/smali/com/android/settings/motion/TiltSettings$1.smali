.class Lcom/android/settings/motion/TiltSettings$1;
.super Landroid/os/Handler;
.source "TiltSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/TiltSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/TiltSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/TiltSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/TiltSettings$1;->this$0:Lcom/android/settings/motion/TiltSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings$1;->this$0:Lcom/android/settings/motion/TiltSettings;

    invoke-static {v0}, Lcom/android/settings/motion/TiltSettings;->access$000(Lcom/android/settings/motion/TiltSettings;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
