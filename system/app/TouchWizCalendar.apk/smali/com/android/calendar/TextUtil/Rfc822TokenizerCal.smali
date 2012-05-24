.class public Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;
.super Ljava/lang/Object;
.source "Rfc822TokenizerCal.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# static fields
.field public static final EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field public static final PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[^\\s@]+@[^\\s@]+\\.[a-zA-z][a-zA-Z][a-zA-Z]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^[0-9][0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getToken(Ljava/lang/StringBuilder;)Lcom/android/calendar/TextUtil/Rfc822TokenCal;
    .locals 5

    sget-object v0, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/TextUtil/Rfc822TokenCal;",
            ">;)V"
        }
    .end annotation

    const/16 v5, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {v3}, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->getToken(Ljava/lang/StringBuilder;)Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    :goto_1
    if-ge v2, v1, :cond_5

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_3

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    :goto_2
    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_6

    invoke-static {v3}, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->getToken(Ljava/lang/StringBuilder;)Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 9

    const/16 v8, 0x7b

    const/16 v7, 0x28

    const/16 v6, 0x22

    const/16 v5, 0x5c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, p2

    :cond_0
    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_2

    :cond_1
    return v1

    :cond_2
    if-ne v0, v6, :cond_5

    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_4

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-ne v0, v8, :cond_9

    const/4 v3, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_2
    if-ge v1, v2, :cond_0

    if-lez v3, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v4, 0x7d

    if-ne v0, v4, :cond_6

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-ne v0, v8, :cond_7

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    if-ne v0, v5, :cond_8

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    if-ne v0, v7, :cond_d

    const/4 v3, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_3
    if-ge v1, v2, :cond_0

    if-lez v3, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v4, 0x29

    if-ne v0, v4, :cond_a

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    if-ne v0, v7, :cond_b

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    if-ne v0, v5, :cond_c

    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_f

    add-int/lit8 v1, v1, 0x1

    :goto_4
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v4, 0x3e

    if-ne v0, v4, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/android/calendar/TextUtil/Rfc822TokenizerCal;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    if-ge v1, p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge v1, p2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-ge v1, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
