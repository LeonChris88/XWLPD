.class Lcom/android/phone/InVTCallScreen$11;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;

.field final synthetic val$c:Lcom/android/internal/telephony/Connection;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$11;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-object p2, p0, Lcom/android/phone/InVTCallScreen$11;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$3400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$11;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "handle WAIT_PROMPT_CONFIRMED, proceed..."

    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$11;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->proceedAfterWaitChar()V

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    return-void
.end method
