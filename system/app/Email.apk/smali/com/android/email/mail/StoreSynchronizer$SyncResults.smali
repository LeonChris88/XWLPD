.class public Lcom/android/email/mail/StoreSynchronizer$SyncResults;
.super Ljava/lang/Object;
.source "StoreSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/StoreSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncResults"
.end annotation


# instance fields
.field public mMessageFetched:I

.field public mNewMessages:I

.field public mReSync:Z

.field public mTotalMessages:I

.field public mUpdateAccountList:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iput p2, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iput p2, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    iput p3, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iput p2, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    iput-boolean p3, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mReSync:Z

    iput-boolean p4, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mUpdateAccountList:Z

    return-void
.end method
