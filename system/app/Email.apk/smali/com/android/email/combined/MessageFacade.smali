.class public Lcom/android/email/combined/MessageFacade;
.super Ljava/lang/Object;
.source "MessageFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/combined/MessageFacade$MessageListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/email/combined/MessageFacade;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addFolder(IILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/combined/MessageBehavior;->addFolder(IILjava/lang/String;)V

    return-void
.end method

.method public addListener(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    check-cast p1, Lcom/android/email/combined/MessageFacade$MessageListener;

    invoke-virtual {v0, p1}, Lcom/android/email/combined/MessageBehavior;->addListener(Lcom/android/email/combined/MessageFacade$MessageListener;)V

    return-void
.end method

.method public addMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/combined/MessageBehavior;->addMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method public getBehavior()Lcom/android/email/combined/MessageBehavior;
    .locals 1

    iget-object v0, p0, Lcom/android/email/combined/MessageFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/combined/MessageBehavior;->getInstance(Landroid/content/Context;)Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    return-object v0
.end method

.method public removeFolder(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/combined/MessageBehavior;->removeFolder(II)V

    return-void
.end method

.method public removeListener(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    check-cast p1, Lcom/android/email/combined/MessageFacade$MessageListener;

    invoke-virtual {v0, p1}, Lcom/android/email/combined/MessageBehavior;->removeListener(Lcom/android/email/combined/MessageFacade$MessageListener;)V

    return-void
.end method

.method public removeMessage(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/combined/MessageBehavior;->removeMessage(II)V

    return-void
.end method

.method public removeMessageForDate(IJ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/combined/MessageBehavior;->removeMessageForDate(IJ)V

    return-void
.end method

.method public setMessageFavorite(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/combined/MessageBehavior;->setMessageFavorite(IZ)V

    return-void
.end method

.method public setMessageRead(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/combined/MessageBehavior;->setMessageRead(IZ)V

    return-void
.end method

.method public syncMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/combined/MessageFacade;->addMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method
