.class Lcom/android/phone/OverturnTutorialIncallScreen$1;
.super Landroid/os/Handler;
.source "OverturnTutorialIncallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OverturnTutorialIncallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OverturnTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$000(Lcom/android/phone/OverturnTutorialIncallScreen;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "OVERTURN_TUTORIAL_SUCCESS message delivered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$002(Lcom/android/phone/OverturnTutorialIncallScreen;I)I

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$100(Lcom/android/phone/OverturnTutorialIncallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$100(Lcom/android/phone/OverturnTutorialIncallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$102(Lcom/android/phone/OverturnTutorialIncallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->showDialog(I)V

    goto :goto_0

    :cond_1
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-static {v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$200(Lcom/android/phone/OverturnTutorialIncallScreen;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$300(Lcom/android/phone/OverturnTutorialIncallScreen;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
