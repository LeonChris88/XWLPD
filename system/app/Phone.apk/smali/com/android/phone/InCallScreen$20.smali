.class Lcom/android/phone/InCallScreen$20;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InCallScreen$20;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InCallScreen$20;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2500(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen$20;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)V

    :cond_0
    return-void
.end method
