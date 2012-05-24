.class public abstract Lcom/android/email/Controller$Result;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Result"
.end annotation


# instance fields
.field private volatile mRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public addUserAccountCallback(Landroid/os/Bundle;J)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/Email;->SNC_RESTORE_ACCOUNT_FLOW_UNDERPROCESS:Z

    return-void
.end method

.method public deactivateSncCallback()V
    .locals 0

    return-void
.end method

.method public deleteAccountCallback(Landroid/os/Bundle;J)V
    .locals 0

    return-void
.end method

.method public deleteAccountFromWebCallback(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public deviceInfoCallback(I)V
    .locals 0

    return-void
.end method

.method public emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0

    return-void
.end method

.method public folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    .locals 0

    return-void
.end method

.method public folderPushCallback(Lcom/android/emailcommon/mail/MessagingException;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V
    .locals 0

    return-void
.end method

.method public getAvailableAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getUserConfiguredAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getUserProfileCallback(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 0

    return-void
.end method

.method protected final isRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/Controller$Result;->mRegistered:Z

    return v0
.end method

.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 0

    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0

    return-void
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0

    return-void
.end method

.method public modifyUserAccountCallback(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public moveConvAlwaysCallback(Lcom/android/emailcommon/mail/MessagingException;[BII)V
    .locals 0

    return-void
.end method

.method public refreshIRMTemplatesCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0

    return-void
.end method

.method public searchMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0

    return-void
.end method

.method public sendMeetingEditedResponseCallback(ZJJ)V
    .locals 0

    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 0

    return-void
.end method

.method protected setRegistered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/Controller$Result;->mRegistered:Z

    return-void
.end method

.method public setupAccountCallback(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 0

    return-void
.end method

.method public updateMailboxListCallback(ILcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0

    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0

    return-void
.end method

.method public updateUserProfileCallback(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
