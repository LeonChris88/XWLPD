.class Lcom/android/phone/RejectCallWithMsgLayout$1$1;
.super Ljava/lang/Object;
.source "RejectCallWithMsgLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectCallWithMsgLayout$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/RejectCallWithMsgLayout$1;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgLayout$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout$1$1;->this$1:Lcom/android/phone/RejectCallWithMsgLayout$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgLayout$1$1;->this$1:Lcom/android/phone/RejectCallWithMsgLayout$1;

    iget-object v2, v2, Lcom/android/phone/RejectCallWithMsgLayout$1;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsgLayout;->access$100(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgLayout$1$1;->this$1:Lcom/android/phone/RejectCallWithMsgLayout$1;

    iget-object v2, v2, Lcom/android/phone/RejectCallWithMsgLayout$1;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsgLayout;->access$200(Lcom/android/phone/RejectCallWithMsgLayout;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgLayout$1$1;->this$1:Lcom/android/phone/RejectCallWithMsgLayout$1;

    iget-object v2, v2, Lcom/android/phone/RejectCallWithMsgLayout$1;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsgLayout;->access$200(Lcom/android/phone/RejectCallWithMsgLayout;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f090152

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgLayout$1$1;->this$1:Lcom/android/phone/RejectCallWithMsgLayout$1;

    iget-object v5, v2, Lcom/android/phone/RejectCallWithMsgLayout$1;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;-><init>(Lcom/android/phone/RejectCallWithMsgLayout;Ljava/lang/String;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
