.class Lcom/android/phone/OverturnTutorialIncallScreen$6;
.super Ljava/lang/Object;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OverturnTutorialIncallScreen;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen$6;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$6;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$700(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$6;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$802(Lcom/android/phone/OverturnTutorialIncallScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$6;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$902(Lcom/android/phone/OverturnTutorialIncallScreen;I)I

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$6;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->removeDialog(I)V

    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isForegroundActivity() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/OverturnTutorialIncallScreen$6;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-static {v2}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$1000(Lcom/android/phone/OverturnTutorialIncallScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$6;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$1000(Lcom/android/phone/OverturnTutorialIncallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$6;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$000(Lcom/android/phone/OverturnTutorialIncallScreen;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$6;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$1100(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    :cond_0
    return-void
.end method
