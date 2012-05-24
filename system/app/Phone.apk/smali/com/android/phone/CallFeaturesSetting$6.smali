.class Lcom/android/phone/CallFeaturesSetting$6;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-boolean v2, v2, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v2, v2, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-boolean v2, v2, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$400(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/16 v3, 0x25b

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->access$600(Lcom/android/phone/CallFeaturesSetting;I)V

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v2}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    :cond_3
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-object v1, v2, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$300(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
