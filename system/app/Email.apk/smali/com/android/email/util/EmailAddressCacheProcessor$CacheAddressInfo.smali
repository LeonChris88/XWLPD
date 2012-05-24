.class public Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;
.super Ljava/lang/Object;
.source "EmailAddressCacheProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/util/EmailAddressCacheProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheAddressInfo"
.end annotation


# instance fields
.field public mEmailAddress:Ljava/lang/String;

.field public mOperationType:I

.field public mSourceType:I

.field public mUsageCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mEmailAddress:Ljava/lang/String;

    iput p2, p0, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mSourceType:I

    iput p3, p0, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mOperationType:I

    iput p4, p0, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mUsageCount:I

    return-void
.end method
