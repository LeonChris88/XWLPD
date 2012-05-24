.class Lcom/android/phone/InVTCallScreen$32;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Lsiso/vt/VTManager$VTStackStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
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

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lsiso/vt/VTManager$VTEventForUI;Lsiso/vt/VideoTelephonyData;)V
    .locals 10

    const/16 v4, 0x6c

    const v9, 0x7f0e0351

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "Inside VTStackStateListener"

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    const-string v1, "InVTCallScreen:: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChanged State :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_FIRST_VIDEO_FRAME_DECODED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v8}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0e033c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_VIDEO_TX_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9200(Lcom/android/phone/InVTCallScreen;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "Camera disabled due DPM\t- INTENT_MSG_SECURITY"

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0e0253

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->sendLiveVideo()V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$5902(Lcom/android/phone/InVTCallScreen;I)I

    goto :goto_0

    :cond_7
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_CALL_DEINITIALIZED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_11

    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_CALL_DEINITIALIZED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/phone/InVTCallScreen;->access$2402(Z)Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$9300(Lcom/android/phone/InVTCallScreen;Z)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9600(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9600(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->releaseVTManager()V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->deinitVTManager()V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v8}, Lcom/android/phone/InVTCallScreen;->access$2702(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;

    :cond_9
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v1

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-static {v2, v1}, Lcom/android/phone/InVTCallScreen;->access$2600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1194

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v1

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-static {v2, v1}, Lcom/android/phone/InVTCallScreen;->access$2600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9800(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9800(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1194

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1194

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_11
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_END_CALL_REQUEST:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_12

    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_END_CALL_REQUEST"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$2202(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    :cond_12
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_SESSION_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_13

    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_SESSION_STOP_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$2202(Lcom/android/phone/InVTCallScreen;Z)Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->cleanupCall()V

    goto/16 :goto_0

    :cond_13
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_PROTOCOL_ERR_IND:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_14

    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_PROTOCOL_ERR_IND"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$2202(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    :cond_14
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_15

    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_IC_START_FAILURE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0e033a

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9900(Lcom/android/phone/InVTCallScreen;I)V

    goto/16 :goto_0

    :cond_15
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_SUCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_19

    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_IC_START_SUCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_16
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Z)Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "InVTCallScreen"

    const-string v2, "H324M_IC_START_SUCESS:: Preset Image Enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$4602(Lcom/android/phone/InVTCallScreen;Z)Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$10102(Lcom/android/phone/InVTCallScreen;Z)Z

    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10402(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$5902(Lcom/android/phone/InVTCallScreen;I)I

    :cond_17
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$5002(Lcom/android/phone/InVTCallScreen;Z)Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$10002(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    :cond_18
    const-string v1, "InVTCallScreen"

    const-string v2, "H324M_IC_START_SUCESS:: Preset Image Desabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4602(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_1

    :cond_19
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1b

    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_REC_START_FAILURE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0e034e

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9900(Lcom/android/phone/InVTCallScreen;I)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    :cond_1a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v8}, Lcom/android/phone/InVTCallScreen;->access$10502(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    :cond_1b
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1c

    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_REC_START_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1c
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_1d

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_RETRY_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1f

    :cond_1d
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v1, v1, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v6, v1, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    :cond_1e
    const-string v1, "InVTCallScreen:: "

    const-string v2, "VTMNGR_CAMERA_START_SUCCESS "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v7, v1, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$4200(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    :cond_1f
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_20

    const-string v1, "InVTCallScreen:: "

    const-string v2, "VTMNGR_CAMERA_START_FAILURE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Z)Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v6, v1, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$4200(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    :cond_20
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_24

    const-string v1, "InVTCallScreen:: "

    const-string v2, "H324M_REC_STOP_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/MediaLowSpaceReceiver;->unRegisterLowMemoryListner()V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10600(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const v5, 0x7f0e0350

    invoke-virtual {v4, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$10500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v4, v9}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    :goto_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_21
    new-array v0, v7, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Lcom/android/phone/InVTCallScreen$32$1;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$32$1;-><init>(Lcom/android/phone/InVTCallScreen$32;)V

    invoke-static {v1, v0, v8, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;Z)Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10700(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$10800(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10702(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_0

    :cond_22
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$10500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v4, v9}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_2

    :cond_23
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10700(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$11000(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$11100(Lcom/android/phone/InVTCallScreen;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10702(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_0

    :cond_24
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_MAX_TIMEOUT:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_27

    const-string v1, "InVTCallScreen:: "

    const-string v2, "H324M_REC_MAX_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    :cond_25
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    :cond_26
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$10500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v4, v9}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;Z)Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_27
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_2a

    const-string v1, "InVTCallScreen:: "

    const-string v2, "H324M_REC_PROTOCOL_ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    :cond_28
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    :cond_29
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$10500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v4, v9}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    :cond_2a
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_2c

    const-string v1, "InVTCallScreen:: "

    const-string v2, "H324M_REC_PROTOCOL_ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    :cond_2b
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    :cond_2c
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_2d

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Z)Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$4200(Lcom/android/phone/InVTCallScreen;Z)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10402(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$5902(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_0

    :cond_2d
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_2e

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_2e

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_2e

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_2e

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_FILE_READ_ERR:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_2e

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_2e

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1

    :cond_2e
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0e033a

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9900(Lcom/android/phone/InVTCallScreen;I)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>>>>>>mHideCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>>>>>>previousSelectedType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$5900(Lcom/android/phone/InVTCallScreen;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5900(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_31

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5900(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    if-ne v1, v7, :cond_30

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$4902(Lcom/android/phone/InVTCallScreen;Z)Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$10400(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10202(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    :goto_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v8}, Lcom/android/phone/InVTCallScreen;->access$10402(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)V

    :cond_2f
    :goto_4
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4102(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    :cond_30
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4902(Lcom/android/phone/InVTCallScreen;Z)Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$4102(Lcom/android/phone/InVTCallScreen;Z)Z

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$10400(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$4302(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :cond_31
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_4
.end method
