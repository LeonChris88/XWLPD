.class public Lcom/android/email/activity/setup/EmptyTrashDialog;
.super Landroid/preference/DialogPreference;
.source "EmptyTrashDialog.java"


# instance fields
.field private mAccountId:J

.field private mController:Lcom/android/email/Controller;

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mController:Lcom/android/email/Controller;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mAccountId:J

    iput-object v2, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->emptyTrash(J)V

    iget-object v0, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method setAccountId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mAccountId:J

    return-void
.end method

.method setController(Lcom/android/email/Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mController:Lcom/android/email/Controller;

    return-void
.end method

.method setPositiveResultDialog(Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mDialog:Landroid/app/Dialog;

    return-void
.end method
