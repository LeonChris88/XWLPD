.class Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;
.super Ljava/lang/Object;
.source "HtmlUtils.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Sub;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Super;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Blockquote;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Monospace;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Small;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Big;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Underline;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Bold;
    }
.end annotation


# static fields
.field private static COLORS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEADER_SIZES:[F


# instance fields
.field private mImageGetter:Lcom/android/email/activity/utils/html/HtmlUtils$ImageGetter;

.field private mReader:Lorg/xml/sax/XMLReader;

.field private mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mTagHandler:Lcom/android/email/activity/utils/html/HtmlUtils$TagHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->HEADER_SIZES:[F

    invoke-static {}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->buildColorMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->COLORS:Ljava/util/HashMap;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xc0t 0x3ft
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0xa6t 0x3ft
        0x9at 0x99t 0x99t 0x3ft
        0xcdt 0xcct 0x8ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private static buildColorMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "aqua"

    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "black"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "blue"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fuchsia"

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "green"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "grey"

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lime"

    const v2, 0xff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "maroon"

    const/high16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "navy"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "olive"

    const v2, 0x808000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "purple"

    const v2, 0x800080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "red"

    const/high16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "silver"

    const v2, 0xc0c0c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "teal"

    const v2, 0x8080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "white"

    const v2, 0xffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "yellow"

    const v2, 0xffff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-static {p0, p1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    if-eq v2, v0, :cond_0

    const/16 v3, 0x21

    invoke-virtual {p0, p2, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private static endA(Landroid/text/SpannableStringBuilder;)V
    .locals 4

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;

    invoke-static {p0, v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    if-eq v2, v1, :cond_0

    check-cast v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;

    iget-object v3, v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/text/style/URLSpan;

    iget-object v0, v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x21

    invoke-virtual {p0, v3, v2, v1, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private static endBullet(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-static {p0, p1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    if-eq v2, v0, :cond_0

    const/16 v3, 0x21

    invoke-virtual {p0, p2, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v3, "\n"

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-void
.end method

.method private static endFont(Landroid/text/SpannableStringBuilder;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v9, 0x21

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const-class v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;

    invoke-static {p0, v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    if-eq v8, v7, :cond_1

    move-object v6, v0

    check-cast v6, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;

    iget-object v0, v6, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v6, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, v6, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "color"

    const-string v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v0, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    :goto_0
    iget-object v0, v6, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/style/TypefaceSpan;

    iget-object v1, v6, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, v6, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v2, -0x100

    or-int/2addr v0, v2

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v1, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private static endHeader(Landroid/text/SpannableStringBuilder;)V
    .locals 6

    const/16 v5, 0x21

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;

    invoke-static {p0, v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    :goto_0
    if-le v1, v2, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-eq v2, v1, :cond_1

    check-cast v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;

    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    sget-object v4, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->HEADER_SIZES:[F

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;->access$900(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;)I

    move-result v0

    aget v0, v4, v0

    invoke-direct {v3, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v3, v2, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, v2, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void
.end method

.method private static getHtmlColor(Ljava/lang/String;)I
    .locals 5

    const/4 v2, -0x1

    sget-object v3, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->COLORS:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v3, -0x1

    :try_start_0
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v2

    invoke-interface {p0, v1, v2, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private static handleBr(Landroid/text/SpannableStringBuilder;)V
    .locals 1

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method private handleEndTag(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleBr(Landroid/text/SpannableStringBuilder;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    :cond_2
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    :cond_3
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Bold;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Bold;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Big;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa0

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Small;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->endFont(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Blockquote;

    new-instance v2, Landroid/text/style/QuoteSpan;

    invoke-direct {v2}, Landroid/text/style/QuoteSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Monospace;

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->endA(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Underline;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Super;

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Sub;

    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_13

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_13

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_13

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->endHeader(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    :cond_13
    const-string v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/style/BulletSpan;

    new-instance v2, Landroid/text/style/BulletSpan;

    invoke-direct {v2}, Landroid/text/style/BulletSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->endBullet(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mTagHandler:Lcom/android/email/activity/utils/html/HtmlUtils$TagHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mTagHandler:Lcom/android/email/activity/utils/html/HtmlUtils$TagHandler;

    iget-object v1, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v5, p1, v1, v2}, Lcom/android/email/activity/utils/html/HtmlUtils$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    goto/16 :goto_0
.end method

.method private static handleP(Landroid/text/SpannableStringBuilder;)V
    .locals 3

    const/16 v2, 0xa

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    :cond_2
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    :cond_3
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Bold;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Bold;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Bold;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Bold;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Big;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Big;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Small;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Small;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, p2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->startFont(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Blockquote;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Blockquote;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Monospace;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Monospace;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, p2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->startA(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Underline;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Underline;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Super;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Super;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Sub;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Sub;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_13

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_13

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x31

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mImageGetter:Lcom/android/email/activity/utils/html/HtmlUtils$ImageGetter;

    invoke-static {v0, p2, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->startImg(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lcom/android/email/activity/utils/html/HtmlUtils$ImageGetter;)V

    goto/16 :goto_0

    :cond_14
    const-string v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/BulletSpan;

    invoke-direct {v1}, Landroid/text/style/BulletSpan;-><init>()V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mTagHandler:Lcom/android/email/activity/utils/html/HtmlUtils$TagHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mTagHandler:Lcom/android/email/activity/utils/html/HtmlUtils$TagHandler;

    iget-object v1, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v3, p1, v1, v2}, Lcom/android/email/activity/utils/html/HtmlUtils$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    goto/16 :goto_0
.end method

.method private static start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v1, 0x11

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static startA(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 4

    const-string v2, ""

    const-string v3, "href"

    invoke-interface {p1, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    new-instance v2, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;

    invoke-direct {v2, v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x11

    invoke-virtual {p0, v2, v1, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static startFont(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 5

    const-string v3, ""

    const-string v4, "color"

    invoke-interface {p1, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    const-string v4, "face"

    invoke-interface {p1, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    new-instance v3, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;

    invoke-direct {v3, v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x11

    invoke-virtual {p0, v3, v2, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static startImg(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lcom/android/email/activity/utils/html/HtmlUtils$ImageGetter;)V
    .locals 6

    const/4 v5, 0x0

    const-string v3, ""

    const-string v4, "src"

    invoke-interface {p1, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2, v2}, Lcom/android/email/activity/utils/html/HtmlUtils$ImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10806e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-string v3, "\ufffc"

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {p0, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v8, 0xa

    const/16 v7, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_5

    add-int v5, v1, p2

    aget-char v0, p1, v5

    if-eq v0, v7, :cond_0

    if-ne v0, v8, :cond_4

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v3, 0xa

    :goto_1
    if-eq v3, v7, :cond_1

    if-eq v3, v8, :cond_1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleEndTag(Ljava/lang/String;)V

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0, p2, p4}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
