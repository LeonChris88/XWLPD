.class Lcom/android/phone/InVTCallScreen$23;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->showRadioOnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$23;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$23;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5702(Lcom/android/phone/InVTCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$23;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$3900(Lcom/android/phone/InVTCallScreen;)V

    return-void
.end method
