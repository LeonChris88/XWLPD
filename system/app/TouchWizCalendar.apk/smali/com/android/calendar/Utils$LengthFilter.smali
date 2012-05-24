.class public Lcom/android/calendar/Utils$LengthFilter;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthFilter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMax:I

.field private mToast:Landroid/widget/Toast;

.field private prevkeep:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/Utils$LengthFilter;->mContext:Landroid/content/Context;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/calendar/Utils$LengthFilter;->mMax:I

    return-void
.end method

.method private ShowLimitMessage()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/calendar/Utils$LengthFilter;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/Utils$LengthFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/calendar/Utils$LengthFilter;->mMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/Utils$LengthFilter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/Utils$LengthFilter;->mToast:Landroid/widget/Toast;

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/Utils$LengthFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    iget v1, p0, Lcom/android/calendar/Utils$LengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    iget v1, p0, Lcom/android/calendar/Utils$LengthFilter;->prevkeep:I

    if-lez v1, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/Utils$LengthFilter;->ShowLimitMessage()V

    :cond_0
    iput v0, p0, Lcom/android/calendar/Utils$LengthFilter;->prevkeep:I

    if-gtz v0, :cond_1

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_1
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/Utils$LengthFilter;->ShowLimitMessage()V

    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method
