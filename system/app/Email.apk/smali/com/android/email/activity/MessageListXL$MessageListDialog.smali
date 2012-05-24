.class public Lcom/android/email/activity/MessageListXL$MessageListDialog;
.super Landroid/app/DialogFragment;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageListDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(ILandroid/os/Bundle;)Lcom/android/email/activity/MessageListXL$MessageListDialog;
    .locals 3

    new-instance v0, Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-direct {v0}, Lcom/android/email/activity/MessageListXL$MessageListDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "bundle"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "bundle"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v9

    :goto_0
    return-object v9

    :pswitch_1
    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->createListByDialog()Landroid/app/Dialog;

    move-result-object v9

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->createViewModeDialog()Landroid/app/Dialog;

    move-result-object v9

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$6300(Lcom/android/email/activity/MessageListXL;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v2

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$5200(Lcom/android/email/activity/MessageListXL;)I

    move-result v3

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$5300(Lcom/android/email/activity/MessageListXL;)I

    move-result v4

    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$5400(Lcom/android/email/activity/MessageListXL;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v2, 0x1

    const/16 v3, 0x7b2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Landroid/widget/DatePicker;->setMinDate(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v2, 0x1

    const/16 v3, 0x7f4

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    const/16 v3, 0xb

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    const/16 v3, 0x1f

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    const/16 v3, 0x17

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    const/16 v3, 0x3b

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    const/16 v3, 0x3b

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Landroid/widget/DatePicker;->setMaxDate(J)V

    move-object v9, v0

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->createMailbox(Z)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->createMailbox(Z)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v2

    const-string v3, "mailbox_selected_position"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->renameMailbox(I)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragment;->changeBgColorDialog()Landroid/app/Dialog;

    move-result-object v9

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->changeFontSize()Landroid/app/Dialog;

    move-result-object v9

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
