.class Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;
.super Ljava/lang/Object;
.source "HtmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Header"
.end annotation


# instance fields
.field private mLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;->mLevel:I

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;->mLevel:I

    return v0
.end method
