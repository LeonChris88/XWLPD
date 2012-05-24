.class public Lcom/android/email/combined/AccountFacade;
.super Ljava/lang/Object;
.source "AccountFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/combined/AccountFacade$AccountListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/email/combined/AccountFacade;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getBehavior()Lcom/android/email/combined/AccountBehavior;
    .locals 1

    iget-object v0, p0, Lcom/android/email/combined/AccountFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/combined/AccountBehavior;->getInstance(Landroid/content/Context;)Lcom/android/email/combined/AccountBehavior;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/android/email/combined/AccountFacade$AccountListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/combined/AccountFacade;->getBehavior()Lcom/android/email/combined/AccountBehavior;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/combined/AccountBehavior;->addListener(Lcom/android/email/combined/AccountFacade$AccountListener;)V

    return-void
.end method

.method public addedAccount(ILjava/lang/String;)V
    .locals 3

    const-string v1, "###"

    const-string v2, "--------------------mook----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/combined/AccountFacade;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digc/seven/Z7MailHandler;->setMookSevenNoti()V

    invoke-direct {p0}, Lcom/android/email/combined/AccountFacade;->getBehavior()Lcom/android/email/combined/AccountBehavior;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/email/combined/AccountBehavior;->notifyAddedAccount(ILjava/lang/String;)V

    return-void
.end method

.method public quietRemoveAccount(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/combined/AccountFacade;->getBehavior()Lcom/android/email/combined/AccountBehavior;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/combined/AccountBehavior;->deleteAccountForEmail(I)I

    return-void
.end method

.method public removeAccount(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/combined/AccountFacade;->getBehavior()Lcom/android/email/combined/AccountBehavior;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/combined/AccountBehavior;->notifyRemovedAccount(I)V

    return-void
.end method

.method public removeListener(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/combined/AccountFacade;->getBehavior()Lcom/android/email/combined/AccountBehavior;

    move-result-object v0

    check-cast p1, Lcom/android/email/combined/AccountFacade$AccountListener;

    invoke-virtual {v0, p1}, Lcom/android/email/combined/AccountBehavior;->removeListener(Lcom/android/email/combined/AccountFacade$AccountListener;)V

    return-void
.end method
