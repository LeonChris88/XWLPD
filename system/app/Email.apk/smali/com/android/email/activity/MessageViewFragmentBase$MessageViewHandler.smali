.class Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
.super Landroid/os/Handler;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public DeviceAccessError(I)V
    .locals 1

    const v0, 0x40001

    if-ne p1, v0, :cond_1

    const/high16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x40002

    if-ne p1, v0, :cond_0

    const v0, 0x80001

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public attachmentProgress(ZJI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->showSmimeProgressDialog(ZJI)V

    return-void
.end method

.method public displayToast(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public errorIrmRemoval()V
    .locals 1

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public errorLoadMore(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/high16 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :sswitch_0
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_1
    const/high16 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_2
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_3
    const-string v0, "Email"

    const-string v1, "errorLoadMore : LOADMORE_CANCEL "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_0
        0x70000 -> :sswitch_1
        0x100000 -> :sswitch_3
    .end sparse-switch
.end method

.method public fetching_attachmentProgress_cancel()V
    .locals 2

    const/16 v1, 0x10

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public finishIrmRemoval()V
    .locals 1

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public finishLoadMore()V
    .locals 1

    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public goBackToMessageList()V
    .locals 2

    const/16 v1, 0xfa0

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 35

    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v30, :cond_0

    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Lcom/android/email/adapter/ProtocolAdapter;->isSevenAccount(J)Z

    move-result v30

    if-eqz v30, :cond_0

    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewForSeven;->mZ7Handler:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    sparse-switch v30, :sswitch_data_0

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_1
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->showLoadMoreDialog()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException - MSG_LOADMORE_START"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_START"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_0

    :catch_2
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "NullPointerException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :sswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08032b

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :catch_4
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_FINISH - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_1

    :catch_5
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :sswitch_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08032c

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :catch_6
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_ERROR - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_2

    :sswitch_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_7

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08032d

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :catch_7
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_OUTOFMEMORY - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_3

    :sswitch_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08032f

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :catch_8
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_NULLMSG - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_4

    :sswitch_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_9

    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f080330

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :catch_9
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_FETCH_FAILURE - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_5

    :sswitch_7
    const-string v30, "Email"

    const-string v31, "MSG_LOADMORE_CANCEL"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->hide()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v23

    const-string v30, "Email"

    const-string v31, "IllegalStateException - MSG_LOADMORE_CANCEL - hide()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08059c

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08059b

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_a
    sget v30, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f08059d

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    const/16 v30, 0x0

    sput v30, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    const-string v30, "IRMRemovalFlag"

    sget v31, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    sget-object v31, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "_id="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v33

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_7
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-eqz v30, :cond_d

    const/16 v28, 0x1

    :goto_6
    if-eqz v28, :cond_11

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_e

    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    if-nez v30, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-nez v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    if-eqz v30, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f08026a

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7700(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v30

    if-eqz v30, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v30

    if-eqz v30, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v30

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    move/from16 v30, v0

    if-eqz v30, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f0804df

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9402(Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v30

    if-eqz v30, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v30

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    move/from16 v30, v0

    if-eqz v30, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f0804e0

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9402(Ljava/lang/String;)Ljava/lang/String;

    :cond_a
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9400()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;)V

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    if-nez v30, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->show()V

    :cond_c
    const/16 v30, 0x1

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_d

    goto/16 :goto_0

    :catch_b
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    :cond_d
    const/16 v28, 0x0

    goto/16 :goto_6

    :cond_e
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-nez v30, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    new-instance v31, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;
    :try_end_8
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_d

    goto/16 :goto_7

    :catch_c
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    :cond_f
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9200(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_9
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_8

    :catch_d
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    :cond_10
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f08026c

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9200(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9402(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_12
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_a
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_d

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    invoke-static/range {v30 .. v32}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v10

    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    if-eqz v30, :cond_1

    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MSG_FETCHING_ATTACHMENT_PROGRESS_INIT "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " Total "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    if-eqz v30, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " / "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMax(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->show()V
    :try_end_b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_f

    goto/16 :goto_0

    :catch_e
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    :cond_13
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_c
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_f

    goto :goto_a

    :catch_f
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_d
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    if-eqz v30, :cond_1

    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MSG_FETCHING_ATTACHMENT_PROGRESS_DOWNLOADING TotalCurrent "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-nez v30, :cond_14

    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->progress_rotated:Z

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->show()V

    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->progress_rotated:Z

    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mProgressDialog2 no show "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_d
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_11

    goto/16 :goto_0

    :catch_10
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    :catch_11
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_e
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9602(I)I

    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9802(I)I

    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_e
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_e .. :try_end_e} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_14

    :cond_15
    :goto_b
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MSG_FETCHING_ATTACHMENT_PROGRESS_CANCEL "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_12
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_b

    :catch_13
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_b

    :catch_14
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_b

    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    move-object/from16 v30, v0

    const-string v31, "text/html"

    const-string v32, "utf-8"

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_11
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    :goto_c
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/AttachmentInfo;

    iget-object v0, v10, Lcom/android/email/AttachmentInfo;->mAttachmentViewLin:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    const/16 v30, 0x1

    :goto_d
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, v10, Lcom/android/email/AttachmentInfo;->downloadButton:Landroid/widget/ImageButton;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    const/16 v30, 0x1

    :goto_e
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_16

    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    :cond_16
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    :cond_17
    const/16 v30, 0x0

    goto :goto_d

    :cond_18
    const/16 v30, 0x0

    goto :goto_e

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const v31, 0x7f080085

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V

    goto/16 :goto_0

    :sswitch_13
    sget v30, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f080113

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    const/16 v30, 0x0

    sput v30, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    const-string v30, "IRMRemovalFlag"

    sget v31, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    sget-object v31, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "_id="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v33

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_1b

    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_15
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_17

    :cond_1b
    :goto_f
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    :goto_10
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/AttachmentInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    check-cast v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-object/from16 v0, v30

    invoke-static {v0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9900(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    add-int/lit8 v24, v24, 0x1

    goto :goto_10

    :catch_15
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_f

    :catch_16
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_f

    :catch_17
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_f

    :cond_1c
    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9802(I)I

    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MSG_NETWORK_ERROR "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const v31, 0x7f0800b4

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const v31, 0x7f08026a

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const v31, 0x7f0800bc

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V

    goto/16 :goto_0

    :sswitch_16
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/email/AttachmentInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->iconView:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/graphics/Bitmap;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_18

    goto/16 :goto_0

    :catch_18
    move-exception v30

    goto/16 :goto_0

    :sswitch_17
    :try_start_11
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    if-eqz v30, :cond_1e

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9604()I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_11
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_11 .. :try_end_11} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_1b

    :cond_1d
    :goto_11
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MSG_FINISH_LOAD_ATTACHMENT  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-boolean v32, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7700(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v30

    if-eqz v30, :cond_20

    new-instance v30, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_12
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    if-eqz v30, :cond_1

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_1

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9602(I)I

    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    goto/16 :goto_0

    :cond_1e
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_12
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_12 .. :try_end_12} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_1b

    goto/16 :goto_11

    :catch_19
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "BadTokenException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_11

    :catch_1a
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException!!!!!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_11

    :catch_1b
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_11

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7800(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    goto/16 :goto_12

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f0803ce

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->messageChanged()V

    goto/16 :goto_0

    :sswitch_1b
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    if-eqz v30, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v30

    if-eqz v30, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    if-eqz v30, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_1d

    :cond_23
    :goto_13
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    const/high16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_24

    const v22, 0x7f08050d

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v22

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :catch_1c
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalStateException - MSG_LOADMORE_NULLMSG - dismiss()"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    goto :goto_13

    :catch_1d
    move-exception v23

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "IllegalArgumentException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_13

    :cond_24
    const v22, 0x7f08050f

    goto :goto_14

    :sswitch_1c
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_INIT"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    if-nez v30, :cond_25

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_INIT mAttachmentList == null"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v24

    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v30

    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    if-eqz v30, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_27

    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_INIT _attachmentId == "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " _messageId "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->startAttachmentDownloadForZ7(JJ)V

    :cond_26
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl :mAttatchmentCount == mAttachmentCnt_saved"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_INIT "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " => "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v32

    aget-object v32, v32, v24

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->finishAttachmentDownloadForZ7(J)V

    goto :goto_16

    :cond_28
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_15

    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_START"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v9

    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_29

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_START : mContentUri is null"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v25

    if-eqz v25, :cond_1

    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v30, :cond_1

    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    sget-object v30, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Lcom/android/email/activity/MessageViewForSeven;->startDownloadAttachment(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    goto/16 :goto_0

    :cond_29
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_START : mContentUri is not NULL don\'t start download"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISH"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISHmAttachmentCnt: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " mAttachmentCount : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2a

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9708()I

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_2c

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9602(I)I

    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    :goto_17
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISH  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-boolean v32, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7700(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v30

    if-eqz v30, :cond_2d

    new-instance v30, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_18
    sget-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v17

    const/16 v24, 0x0

    :goto_19
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v32, v0

    cmp-long v30, v30, v32

    if-nez v30, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v30

    aget-object v30, v30, v24

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISH "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " -> "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_1a
    const-string v30, "MessageViewFragmentBase >>"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISHmAttachmentCnt: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9600()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " mAttachmentCount : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " mAttachmentCnt_saved : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v30

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9700()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->initAttachmentDownloadForZ7()V

    goto/16 :goto_0

    :cond_2c
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9608()I

    goto/16 :goto_17

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v10

    if-eqz v10, :cond_2e

    iget-object v0, v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2e

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/16 v30, 0x64

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7600(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10200(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2f

    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "Seven attachment download for save"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v0, v11, v12, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8000(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    goto/16 :goto_18

    :cond_2f
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "Seven attachment download for view"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v0, v11, v12, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8000(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    goto/16 :goto_18

    :cond_30
    const-string v30, "MessageViewFragmentBase >>"

    const-string v31, "btl : ATTACHMENT_Z7_DOWNLOAD_FINISH mContentUri is not null"

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_31
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_19

    :cond_32
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9602(I)I

    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    goto/16 :goto_0

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/email/activity/MessageViewFragmentBase;->access$10300(Lcom/android/email/activity/MessageViewFragmentBase;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_b
        0x3 -> :sswitch_f
        0x4 -> :sswitch_11
        0x5 -> :sswitch_12
        0x6 -> :sswitch_13
        0xa -> :sswitch_14
        0xc -> :sswitch_15
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0x10 -> :sswitch_e
        0x12 -> :sswitch_16
        0x13 -> :sswitch_17
        0x14 -> :sswitch_18
        0x15 -> :sswitch_19
        0x16 -> :sswitch_1a
        0x17 -> :sswitch_10
        0x18 -> :sswitch_1f
        0x3e8 -> :sswitch_8
        0x3e9 -> :sswitch_9
        0x3ea -> :sswitch_a
        0xfa0 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x186a0 -> :sswitch_1c
        0x186a1 -> :sswitch_1d
        0x186a2 -> :sswitch_1e
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_5
        0x60000 -> :sswitch_6
        0x70000 -> :sswitch_7
        0x80000 -> :sswitch_1b
        0x80001 -> :sswitch_1b
    .end sparse-switch
.end method

.method public loadData(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x17

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public messageChanged()V
    .locals 2

    const/16 v1, 0x16

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public networkError()V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public progress(Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public securityRequiredError()V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAttachmentsEnabled(Z)V
    .locals 2

    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMessageWebView()V
    .locals 3

    const/16 v2, 0x18

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->removeMessages(I)V

    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public showLoadMoreDialog()V
    .locals 6

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v4, "LoadMoreDialog"

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "Email"

    const-string v5, "Inside if (prev != null)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const v4, 0x7f08023a

    const/16 v5, 0xe

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->newInstance(II)Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    move-result-object v2

    sget-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    const-string v4, "LoadMoreDialog"

    invoke-virtual {v2, v0, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public showSmimeProgressDialog(ZJI)V
    .locals 4

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-ne p4, v2, :cond_2

    const/16 v0, 0xb

    :goto_0
    const v2, 0x7f080239

    invoke-static {v2, v0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->newInstance(II)Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    move-result-object v1

    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "MessageViewFragmentBase >>"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v0, 0xc

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1
.end method

.method public showSmimeUserChoiceDialog()V
    .locals 6

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "SmimeUserChoice"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "SMIME"

    const-string v5, "REMOVING FRAGMENT Dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const v4, 0x7f08023a

    const/16 v5, 0xf

    invoke-static {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->newInstance(II)Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    move-result-object v2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    const-string v4, "SmimeUserChoice"

    invoke-virtual {v2, v1, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public startIrmRemoval()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startLoadMore()V
    .locals 1

    const/high16 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessage(I)Z

    return-void
.end method
