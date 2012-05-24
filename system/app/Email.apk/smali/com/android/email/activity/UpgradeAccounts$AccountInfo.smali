.class Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
.super Ljava/lang/Object;
.source "UpgradeAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UpgradeAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountInfo"
.end annotation


# instance fields
.field account:Lcom/android/email/Account;

.field errorMessage:Ljava/lang/String;

.field isError:Z

.field maxProgress:I

.field progress:I


# direct methods
.method public constructor <init>(Lcom/android/email/Account;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    iput v0, p0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->maxProgress:I

    iput v0, p0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->progress:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->errorMessage:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    return-void
.end method
