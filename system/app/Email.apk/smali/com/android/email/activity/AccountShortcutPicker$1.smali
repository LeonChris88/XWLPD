.class Lcom/android/email/activity/AccountShortcutPicker$1;
.super Ljava/lang/Object;
.source "AccountShortcutPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountShortcutPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountShortcutPicker;


# direct methods
.method constructor <init>(Lcom/android/email/activity/AccountShortcutPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/AccountShortcutPicker$1;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/email/activity/AccountShortcutPicker$1;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-static {v2}, Lcom/android/email/activity/AccountShortcutPicker;->access$100(Lcom/android/email/activity/AccountShortcutPicker;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/AccountShortcutPicker$1;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-static {v2}, Lcom/android/email/activity/AccountShortcutPicker;->access$100(Lcom/android/email/activity/AccountShortcutPicker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p2, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/AccountShortcutPicker$1;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-static {v2}, Lcom/android/email/activity/AccountShortcutPicker;->access$100(Lcom/android/email/activity/AccountShortcutPicker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/AccountShortcutPicker$DialogItem;

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/AccountShortcutPicker$1;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    iget-wide v3, v1, Lcom/android/email/activity/AccountShortcutPicker$DialogItem;->accountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/AccountShortcutPicker$1;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-static {v2, v0}, Lcom/android/email/activity/AccountShortcutPicker;->access$200(Lcom/android/email/activity/AccountShortcutPicker;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/android/email/activity/AccountShortcutPicker$1;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-virtual {v2}, Lcom/android/email/activity/AccountShortcutPicker;->finish()V

    goto :goto_0
.end method
