.class public Lcom/sec/android/app/calculator/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# static fields
.field private static TEXT_SIZE_LARGE_LAND:F

.field private static TEXT_SIZE_LARGE_PORT:F

.field private static TEXT_SIZE_MEDIUM_LAND:F

.field private static TEXT_SIZE_MEDIUM_PORT:F

.field private static TEXT_SIZE_SMALL_LAND:F

.field private static TEXT_SIZE_SMALL_PORT:F


# instance fields
.field public SelectedTextSize:F

.field private checkChar:[Ljava/lang/String;

.field public delst:Z

.field public errorCursor:I

.field private exception:Lcom/sec/android/app/calculator/SyntaxException;

.field private frontText:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field private isLongClick:Z

.field private isSelecting:Z

.field private isSelectingAll:Z

.field public lastError:I

.field private mContext:Landroid/content/Context;

.field private mCursorState:Z

.field private mDisplay:Landroid/widget/EditText;

.field public mEnterEnd:Z

.field private mHistory:Lcom/sec/android/app/calculator/History;

.field private mHistoryScreen:Landroid/widget/EditText;

.field private mIsError:Z

.field private mIsOpenedSignParenthesis:Z

.field public mPaste:Z

.field private mType:Landroid/graphics/Typeface;

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x423c

    sput v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_SMALL_PORT:F

    const/high16 v0, 0x428c

    sput v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_MEDIUM_PORT:F

    const/high16 v0, 0x430d

    sput v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_LARGE_PORT:F

    const/high16 v0, 0x41e8

    sput v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_SMALL_LAND:F

    const/high16 v0, 0x4234

    sput v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_MEDIUM_LAND:F

    const/high16 v0, 0x42c4

    sput v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_LARGE_LAND:F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/sec/android/app/calculator/History;Landroid/graphics/Typeface;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/sec/android/app/calculator/SyntaxException;

    invoke-direct {v1}, Lcom/sec/android/app/calculator/SyntaxException;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->mCursorState:Z

    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelecting:Z

    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll:Z

    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->isLongClick:Z

    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->mPaste:Z

    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->delst:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->frontText:Ljava/lang/String;

    iput v4, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    iput v4, p0, Lcom/sec/android/app/calculator/EventHandler;->lastError:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/calculator/EventHandler;->SelectedTextSize:F

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "sin"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "cos"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "tan"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ln("

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "abs("

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "log("

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "^("

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u221a("

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->checkChar:[Ljava/lang/String;

    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    new-instance v1, Lcom/sec/android/app/calculator/EventHandler$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/calculator/EventHandler$1;-><init>(Lcom/sec/android/app/calculator/EventHandler;)V

    iput-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->handler:Landroid/os/Handler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->sb:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistory:Lcom/sec/android/app/calculator/History;

    iput-object p5, p0, Lcom/sec/android/app/calculator/EventHandler;->mType:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_SMALL_PORT:F

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_MEDIUM_PORT:F

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_LARGE_PORT:F

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_SMALL_LAND:F

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_MEDIUM_LAND:F

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_LARGE_LAND:F

    return-void
.end method

.method public static checkCharCount(Ljava/lang/StringBuilder;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    :goto_1
    invoke-virtual {p0, p1, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method private clearSB()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .locals 15

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v10, 0xa

    const/16 v13, 0x45

    invoke-virtual {v11, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v13, -0x1

    if-eq v5, v13, :cond_1

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_0
    const/4 v13, -0x1

    if-eq v5, v13, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    add-int/2addr v6, v3

    if-ge v3, v8, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, -0x1

    :cond_3
    const/16 v13, 0x10

    if-ge v6, v13, :cond_4

    const/16 v13, 0x11

    if-ge v8, v13, :cond_5

    :cond_4
    const/16 v13, -0x9

    if-ge v6, v13, :cond_6

    :cond_5
    add-int/lit8 v10, v8, -0x1

    :goto_2
    if-ge v10, v8, :cond_9

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x35

    if-lt v13, v14, :cond_8

    add-int/lit8 v9, v10, -0x1

    :goto_3
    if-ltz v9, :cond_7

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x39

    if-ne v13, v14, :cond_7

    const/16 v13, 0x30

    invoke-virtual {v2, v9, v13}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_6
    add-int/2addr v10, v6

    goto :goto_2

    :cond_7
    if-ltz v9, :cond_c

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, 0x1

    int-to-char v13, v13

    invoke-virtual {v2, v9, v13}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_8
    :goto_4
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_9
    const/4 v13, -0x5

    if-lt v6, v13, :cond_a

    const/16 v13, 0xf

    if-le v6, v13, :cond_d

    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_b

    const/4 v13, 0x1

    const/16 v14, 0x2e

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, -0x1

    :cond_b
    :goto_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v8, :cond_11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_11

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    const/16 v14, 0x31

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    move v7, v8

    :goto_7
    if-ge v7, v6, :cond_e

    const/16 v13, 0x30

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_e
    move v7, v6

    :goto_8
    if-gtz v7, :cond_f

    const/4 v13, 0x0

    const/16 v14, 0x30

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_f
    if-gtz v6, :cond_10

    const/4 v6, 0x1

    :cond_10
    const/16 v13, 0x2e

    invoke-virtual {v2, v6, v13}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    goto :goto_5

    :cond_11
    sub-int v13, v8, v3

    add-int/lit8 v4, v13, -0x1

    const/16 v13, 0xa

    if-le v4, v13, :cond_12

    add-int/lit8 v4, v4, -0xa

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v4, :cond_12

    add-int/lit8 v13, v3, 0xa

    add-int/2addr v13, v7

    add-int/lit8 v13, v13, 0x1

    const/16 v14, 0x30

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_12
    add-int/lit8 v12, v8, -0x1

    :goto_a
    if-ltz v12, :cond_13

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-ne v13, v14, :cond_13

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 v12, v12, -0x1

    goto :goto_a

    :cond_13
    if-ltz v12, :cond_14

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-ne v13, v14, :cond_14

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_14
    if-eqz v6, :cond_15

    const/16 v13, 0x45

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_15
    const-wide/16 v13, 0x0

    cmpg-double v13, p0, v13

    if-gez v13, :cond_16

    const/4 v13, 0x0

    const/16 v14, 0x2d

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    :cond_16
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public static doubleToString(DI)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/android/app/calculator/EventHandler;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private insertComma(Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/StringBuilder;II)V

    return-void
.end method

.method private insertComma(Ljava/lang/StringBuilder;II)V
    .locals 15

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v11, 0x0

    const/4 v1, 0x0

    sub-int v13, p2, v4

    if-ltz v13, :cond_1

    sub-int v12, p2, v4

    :goto_0
    add-int/lit8 v3, v12, -0x1

    :goto_1
    if-ltz v3, :cond_3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v13

    if-nez v13, :cond_2

    const/16 v13, 0x2e

    if-eq v0, v13, :cond_2

    add-int/lit8 v11, v3, 0x1

    if-ne v12, v11, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    move/from16 v3, p3

    :goto_3
    if-gt v3, v5, :cond_4

    if-ne v3, v5, :cond_6

    move v1, v5

    :cond_4
    :goto_4
    invoke-virtual {p0, v10, v11, v1}, Lcom/sec/android/app/calculator/EventHandler;->removeSub(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-gt v3, v13, :cond_5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-ne v3, v13, :cond_8

    invoke-virtual {v9, v8, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/sec/android/app/calculator/EventHandler;->changeNumFomat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-eqz v13, :cond_0

    iget-object v13, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {p0, v7}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v14

    invoke-interface {v13, v11, v1, v14}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    :cond_6
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v13

    if-nez v13, :cond_7

    const/16 v13, 0x2e

    if-ne v0, v13, :cond_7

    move v1, v3

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v3, v13, :cond_a

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    :goto_6
    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v13

    if-nez v13, :cond_d

    const/16 v13, 0x2e

    if-eq v0, v13, :cond_d

    const/16 v13, 0x45

    if-ne v0, v13, :cond_b

    const/16 v13, 0x2d

    if-eq v6, v13, :cond_9

    invoke-static {v6}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v13

    if-nez v13, :cond_9

    const/16 v13, 0x2b

    if-ne v6, v13, :cond_b

    :cond_9
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    goto :goto_6

    :cond_b
    const/16 v13, 0x45

    if-ne v2, v13, :cond_c

    const/16 v13, 0x2d

    if-eq v0, v13, :cond_9

    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v13

    if-nez v13, :cond_9

    const/16 v13, 0x2b

    if-eq v0, v13, :cond_9

    :cond_c
    invoke-virtual {v9, v8, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/sec/android/app/calculator/EventHandler;->changeNumFomat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v3, 0x1

    :cond_d
    move v2, v0

    goto :goto_7
.end method

.method private reCalculation()V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v12

    const-string v11, ""

    const/16 v15, 0x3d

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v16, v5, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    if-gez v5, :cond_1

    :cond_0
    const-string v15, "Calculator : reCalculaton"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "java.lang.StringIndexOutOfBoundsException"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->clearResult()V

    :goto_0
    return-void

    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string v15, ","

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v8, ""

    const/4 v15, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sec/android/app/calculator/EventHandler;->evaluate(Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    const/16 v17, 0xf

    invoke-static/range {v15 .. v17}, Lcom/sec/android/app/calculator/EventHandler;->doubleToString(DI)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/calculator/EventHandler;->resultFormating(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2e

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v15, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Lcom/sec/android/app/calculator/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :cond_2
    :goto_1
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->clearResult()V

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    iget v15, v3, Lcom/sec/android/app/calculator/SyntaxException;->position:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_5

    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v15, 0xa

    if-eq v1, v15, :cond_4

    const/16 v15, 0x3d

    if-ne v1, v15, :cond_7

    :cond_4
    move v4, v6

    :cond_5
    const/4 v15, 0x1

    if-gt v2, v15, :cond_6

    if-eqz v10, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v10, v15, :cond_d

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->clearResult()V

    goto/16 :goto_0

    :cond_7
    if-eqz v6, :cond_8

    const/16 v15, 0x28

    if-ne v9, v15, :cond_a

    :cond_8
    const/16 v15, 0x2d

    if-eq v1, v15, :cond_9

    const/16 v15, 0x2b

    if-ne v1, v15, :cond_a

    :cond_9
    move v9, v1

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_a
    invoke-static {v1}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v15

    if-eqz v15, :cond_c

    const/16 v15, 0x45

    if-eq v9, v15, :cond_c

    const/16 v15, 0x2b

    if-ne v1, v15, :cond_b

    const/16 v15, 0x2d

    if-eq v1, v15, :cond_c

    :cond_b
    move v10, v6

    add-int/lit8 v2, v2, 0x1

    :cond_c
    move v9, v1

    goto :goto_3

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v12, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v7, v15, -0x1

    :goto_4
    if-ltz v7, :cond_e

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v15, 0x29

    if-eq v1, v15, :cond_f

    :cond_e
    invoke-virtual {v12, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->clearResult()V

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    if-eqz v15, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->closeSignParenthesis()V

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0
.end method

.method private resultFormating(Ljava/lang/String;I)Ljava/lang/String;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    const-wide/16 v5, 0x0

    const-string v17, ""

    const/4 v13, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/16 v20, 0x45

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_6

    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    const/16 v20, 0x2b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    const/16 v20, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    :cond_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v20, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_4

    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v20

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    const-string v20, "\u00f70"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    const-string v20, "\u00f70"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v8, v20, 0x1

    :goto_2
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    const-string v9, "null"

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v21, v0

    const-string v20, "Division by zero"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    const v20, 0x7f070005

    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v20

    throw v20

    :cond_4
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    const/16 v20, 0x0

    add-int/lit8 v21, v13, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    :goto_4
    const/16 v20, 0x2e

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_9

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v16

    :goto_5
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    const/4 v10, 0x0

    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_b

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v20, 0x2e

    move/from16 v0, v20

    if-ne v4, v0, :cond_a

    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_6
    :try_start_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v17

    goto :goto_4

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    goto/16 :goto_2

    :cond_8
    const v20, 0x7f070001

    goto/16 :goto_3

    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v16

    goto :goto_5

    :cond_a
    const/16 v20, 0x30

    move/from16 v0, v20

    if-ne v4, v0, :cond_b

    add-int/lit8 v16, v16, -0x1

    goto :goto_7

    :cond_b
    add-int v14, p2, v16

    add-int v20, p2, v16

    if-gtz v20, :cond_c

    move/from16 v14, p2

    :cond_c
    new-instance v11, Ljava/math/MathContext;

    sget-object v20, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-object/from16 v0, v20

    invoke-direct {v11, v14, v0}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_10

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    :goto_8
    invoke-virtual {v3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v20

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_d

    const-string v20, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    if-lez v20, :cond_d

    const/16 v20, 0x0

    const-string v21, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v20, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_12

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_11

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    sub-int v20, v20, v15

    add-int/lit8 v12, v20, -0x1

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ge v12, v0, :cond_e

    const-string v20, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_10
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    goto/16 :goto_8

    :cond_11
    const/4 v12, 0x0

    const/16 v20, 0x2e

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v20, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_12
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_f

    :goto_a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v20

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a
.end method

.method public static sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    const/16 v4, 0x64

    if-ne p1, v4, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/16 v4, 0x45

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, p1, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method


# virtual methods
.method public CheckInput()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v4, ""

    new-instance v2, Lcom/sec/android/app/calculator/CExpression;

    invoke-direct {v2}, Lcom/sec/android/app/calculator/CExpression;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->checkError()I

    iput-boolean v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mPaste:Z

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ne v6, v9, :cond_2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x28

    if-eq v6, v7, :cond_0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    const-string v6, "\u221a("

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    const-string v6, "e^("

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "ln("

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "sin"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "cos"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "tan"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, v5, v6}, Lcom/sec/android/app/calculator/CExpression;->checkInputExp(Ljava/lang/StringBuilder;Z)Z
    :try_end_0
    .catch Lcom/sec/android/app/calculator/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v6, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    if-gez v6, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    :cond_5
    const-string v6, "***"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eq v6, v9, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    const v6, 0x7f070015

    if-ne v6, v1, :cond_7

    :cond_6
    iput-boolean v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    :cond_7
    iget-boolean v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    if-ne v6, v9, :cond_8

    invoke-virtual {p0, v5, v4, v1}, Lcom/sec/android/app/calculator/EventHandler;->setResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_8
    iput-boolean v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    iput-boolean v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iput-boolean v9, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    iput-boolean v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    iget v1, v0, Lcom/sec/android/app/calculator/SyntaxException;->message:I

    iget v6, v0, Lcom/sec/android/app/calculator/SyntaxException;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    goto :goto_1
.end method

.method public changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method public changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 13

    const/4 v10, -0x1

    const v9, -0x7e4101

    const/16 v8, -0x3400

    const/16 v12, 0x21

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const v2, 0x3b9ac9ff

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    :cond_0
    return-object v6

    :sswitch_0
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v6, v7, v3, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v2, v3

    :goto_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v3, v7, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x2c

    if-ne v1, v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mType:Landroid/graphics/Typeface;

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v6, v7, v3, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/EventHandler;->isArabicCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v4, v3, 0x1

    move v0, v3

    const/4 v5, 0x0

    move v3, v4

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v3, v7, :cond_5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/EventHandler;->isArabicCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :sswitch_1
    const v2, 0x3b9ac9ff

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v6, v7, v3, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_4
    move v5, v3

    :cond_5
    move v5, v3

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v7, v0, v5, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_6
    if-le v3, v2, :cond_7

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Landroid/text/style/ScaleXSpan;

    const v11, 0x3f59999a

    invoke-direct {v7, v11}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v6, v7, v3, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    invoke-static {v1}, Lcom/sec/android/app/calculator/Cmyfunc;->isOpByTwo(C)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x5e

    if-eq v1, v7, :cond_a

    const/16 v7, 0xad

    if-ne v1, v7, :cond_8

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v6, v7, v3, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_8
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    const/16 v7, 0x2d

    if-ne v1, v7, :cond_9

    if-le v3, v2, :cond_9

    move v7, v8

    :goto_2
    invoke-direct {v11, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v11, v3, v7, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_9
    move v7, v9

    goto :goto_2

    :cond_a
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    if-le v2, v3, :cond_b

    move v7, v10

    :goto_3
    invoke-direct {v11, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v11, v3, v7, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_b
    move v7, v8

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public changeNumFomat(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const v12, 0x7f070001

    const/16 v11, 0x2d

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    const-string v8, ""

    :goto_0
    return-object v8

    :cond_0
    const-string v9, ","

    const-string v10, ""

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v9, "NaN"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    const-string v8, ""

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v9, "E"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v8, p1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v3, v9, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v3, v9, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_8

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_4
    move v1, v3

    :cond_5
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_9

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v11, :cond_6

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Infinity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "NaN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_7
    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    move v6, v8

    goto :goto_2

    :cond_a
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public changeTextSize()V
    .locals 10

    const/16 v8, 0x3d

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v3, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    sget v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_LARGE_PORT:F

    sget v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_MEDIUM_PORT:F

    sget v2, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_SMALL_PORT:F

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    iget v7, p0, Lcom/sec/android/app/calculator/EventHandler;->SelectedTextSize:F

    invoke-virtual {v6, v9, v7}, Landroid/widget/EditText;->setTextSize(IF)V

    iget v6, p0, Lcom/sec/android/app/calculator/EventHandler;->SelectedTextSize:F

    cmpl-float v6, v6, v2

    if-nez v6, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget v0, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_LARGE_LAND:F

    sget v1, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_MEDIUM_LAND:F

    sget v2, Lcom/sec/android/app/calculator/EventHandler;->TEXT_SIZE_SMALL_LAND:F

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/sec/android/app/calculator/EventHandler;->SelectedTextSize:F

    cmpl-float v6, v6, v0

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6, v9, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6, v9, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    goto/16 :goto_1

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6, v9, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6, v9, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    goto/16 :goto_1

    :cond_9
    iget v6, p0, Lcom/sec/android/app/calculator/EventHandler;->SelectedTextSize:F

    cmpl-float v6, v6, v1

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6, v9, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    goto/16 :goto_1

    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_c

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6, v9, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    goto/16 :goto_1
.end method

.method public checkError()I
    .locals 9

    const/16 v8, 0x3d

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mPaste:Z

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-static {v6, v7}, Lcom/sec/android/app/calculator/EventHandler;->checkCharCount(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    const/4 v6, 0x1

    if-le v1, v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    :cond_1
    if-lez v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_3

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v6

    if-gt v5, v6, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v5, v4, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    if-ne v5, v6, :cond_8

    move v0, v4

    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_6

    :cond_5
    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->clearResult()V

    const/4 v3, -0x1

    :cond_7
    :pswitch_0
    move v4, v3

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public clearResult()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/EventHandler;->setFrontText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public closeSignParenthesis()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    return-void
.end method

.method public commaCount(Ljava/lang/StringBuilder;)I
    .locals 1

    const-string v0, ","

    invoke-static {p1, v0}, Lcom/sec/android/app/calculator/EventHandler;->checkCharCount(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public evaluate(Ljava/lang/StringBuilder;Z)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    const v7, 0x7f070005

    const/4 v6, 0x1

    const/4 v9, -0x1

    const v8, 0x7f070001

    const-string v4, ""

    new-instance v3, Lcom/sec/android/app/calculator/CExpression;

    invoke-direct {v3}, Lcom/sec/android/app/calculator/CExpression;-><init>()V

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/calculator/CExpression;->checkInputExp(Ljava/lang/StringBuilder;Z)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v6

    throw v6

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lcom/sec/android/app/calculator/CExpression;->evaluateExp()Ljava/lang/String;
    :try_end_0
    .catch Lcom/sec/android/app/calculator/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    iput-boolean v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    const-string v6, "\u00f70"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_2

    const-string v6, "\u00f70"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    :goto_0
    iput v6, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/SyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v1, v0, Lcom/sec/android/app/calculator/SyntaxException;->message:I

    if-nez v2, :cond_1

    const-string v2, "null"

    :cond_1
    const-string v6, "Division by zero"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    iget v8, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v6

    throw v6

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_3
    const v6, 0x7f070006

    if-eq v1, v6, :cond_4

    const v6, 0x7f070007

    if-ne v1, v6, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    iget v7, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    invoke-virtual {v6, v1, v7}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v6

    throw v6

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    iget v7, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    invoke-virtual {v6, v8, v7}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v6

    throw v6

    :catch_1
    move-exception v0

    iput-boolean v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    const-string v6, "\u00f70"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_7

    const-string v6, "\u00f70"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    :goto_1
    iput v6, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, "null"

    :cond_6
    iget-object v9, p0, Lcom/sec/android/app/calculator/EventHandler;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    const-string v6, "Division by zero"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v7

    :goto_2
    iget v7, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    invoke-virtual {v9, v6, v7}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v6

    throw v6

    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_8
    move v6, v8

    goto :goto_2
.end method

.method public getCursor(Landroid/widget/EditText;Z)I
    .locals 3

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    if-eqz p2, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getFrontText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->frontText:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextBuilder()Ljava/lang/StringBuilder;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/calculator/EventHandler;->clearSB()V

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->sb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    return v0
.end method

.method public getmCursorState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mCursorState:Z

    return v0
.end method

.method public goneCursor()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setmCursorState(Z)V

    return-void
.end method

.method public insert(Ljava/lang/StringBuilder;)V
    .locals 14

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->onEnterEnd()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v4

    if-lez v4, :cond_1

    add-int/lit8 v11, v4, -0x1

    invoke-interface {v3, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    :cond_1
    iget-boolean v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const/16 v11, 0xad

    if-eq v5, v11, :cond_5

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-ge v6, v11, :cond_5

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/sec/android/app/calculator/Cmyfunc;->whereLastToken(Ljava/lang/String;Z)I

    move-result v11

    if-gtz v11, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    :cond_2
    invoke-static {v5}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->closeSignParenthesis()V

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->closeSignParenthesis()V

    goto :goto_1

    :cond_5
    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v4

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v11

    if-eqz v11, :cond_6

    if-nez v4, :cond_8

    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "!"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "^(2)"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "^("

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/calculator/EventHandler;->originCount(Ljava/lang/StringBuilder;)I

    move-result v11

    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->originCount(Ljava/lang/StringBuilder;)I

    move-result v12

    add-int/2addr v11, v12

    const/16 v12, 0x64

    if-le v11, v12, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    const v13, 0x7f070008

    invoke-virtual {p0, v11, v12, v13}, Lcom/sec/android/app/calculator/EventHandler;->setResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_2

    :cond_9
    invoke-static {v2}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v4, :cond_7

    :cond_a
    if-lez v4, :cond_b

    add-int/lit8 v11, v4, -0x1

    invoke-interface {v3, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    :cond_b
    const/16 v11, 0x28

    if-ne v5, v11, :cond_c

    const/16 v11, 0x2d

    if-eq v2, v11, :cond_7

    :cond_c
    const/16 v11, 0xad

    if-ne v5, v11, :cond_d

    const/16 v11, 0x2b

    if-eq v2, v11, :cond_7

    const/16 v11, 0x2212

    if-eq v2, v11, :cond_7

    const/16 v11, 0xd7

    if-eq v2, v11, :cond_7

    const/16 v11, 0xf7

    if-eq v2, v11, :cond_7

    :cond_d
    invoke-static {v5}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-static {v2}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v11

    if-eqz v11, :cond_16

    const/4 v7, 0x0

    invoke-static {v5}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v11

    if-eqz v11, :cond_13

    if-eqz v7, :cond_e

    add-int/lit8 v4, v4, 0x1

    :cond_e
    add-int/lit8 v6, v4, -0x1

    :goto_3
    if-lez v6, :cond_f

    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    add-int/lit8 v12, v6, -0x1

    invoke-interface {v11, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v11

    if-nez v11, :cond_14

    move v9, v6

    :cond_f
    const/4 v1, 0x0

    if-lez v9, :cond_10

    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    add-int/lit8 v12, v9, -0x1

    invoke-interface {v11, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x28

    if-ne v11, v12, :cond_10

    const/4 v1, 0x1

    :cond_10
    if-eqz v1, :cond_11

    const/16 v11, 0x2d

    if-eq v2, v11, :cond_11

    const/16 v11, 0x2b

    if-ne v2, v11, :cond_12

    :cond_11
    if-nez v9, :cond_15

    const/16 v11, 0x2d

    if-eq v2, v11, :cond_15

    :cond_12
    const-string v11, ""

    invoke-virtual {p0, v11}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    :goto_4
    invoke-interface {v3, v9, v4, v11}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_13
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v4

    invoke-direct {p0, p1, v4, v4}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/StringBuilder;II)V

    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    iget-object v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x3d

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto/16 :goto_2

    :cond_14
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_15
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    goto :goto_4

    :cond_16
    const/16 v11, 0x30

    if-ne v5, v11, :cond_1c

    invoke-static {v2}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/4 v10, 0x0

    add-int/lit8 v6, v4, -0x1

    :goto_6
    if-ltz v6, :cond_17

    invoke-interface {v3, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v11

    if-nez v11, :cond_18

    const/16 v11, 0x2e

    if-eq v0, v11, :cond_18

    const/16 v11, 0x3c0

    if-ne v0, v11, :cond_18

    :cond_17
    :goto_7
    if-nez v10, :cond_1b

    if-eqz v2, :cond_7

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-interface {v3, v11, v4, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_5

    :cond_18
    const/16 v11, 0x2e

    if-eq v0, v11, :cond_19

    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v11

    if-eqz v11, :cond_1a

    const/16 v11, 0x30

    if-eq v0, v11, :cond_1a

    :cond_19
    const/4 v10, 0x1

    goto :goto_7

    :cond_1a
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_1b
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-interface {v3, v4, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_5

    :cond_1c
    const/16 v11, 0x29

    if-eq v5, v11, :cond_1d

    const/16 v11, 0x65

    if-eq v5, v11, :cond_1d

    const/16 v11, 0x21

    if-eq v5, v11, :cond_1d

    const/16 v11, 0x25

    if-eq v5, v11, :cond_1d

    const/16 v11, 0x3c0

    if-ne v5, v11, :cond_1e

    :cond_1d
    invoke-static {v2}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v11

    if-eqz v11, :cond_1e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u00d7"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-interface {v3, v4, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_5

    :cond_1e
    const/16 v11, 0x29

    if-eq v5, v11, :cond_1f

    invoke-static {v5}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v11

    if-eqz v11, :cond_22

    :cond_1f
    const/16 v11, 0x73

    if-eq v2, v11, :cond_20

    const/16 v11, 0x63

    if-eq v2, v11, :cond_20

    const/16 v11, 0x74

    if-eq v2, v11, :cond_20

    const/16 v11, 0x6c

    if-eq v2, v11, :cond_20

    const/16 v11, 0x221a

    if-eq v2, v11, :cond_20

    const/16 v11, 0x65

    if-eq v2, v11, :cond_20

    const/16 v11, 0x3c0

    if-ne v2, v11, :cond_21

    :cond_20
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u00d7"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    :goto_8
    invoke-interface {v3, v4, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_5

    :cond_21
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    goto :goto_8

    :cond_22
    const/16 v11, 0x65

    if-eq v5, v11, :cond_23

    const/16 v11, 0x21

    if-eq v5, v11, :cond_23

    const/16 v11, 0x25

    if-eq v5, v11, :cond_23

    const/16 v11, 0x3c0

    if-ne v5, v11, :cond_29

    :cond_23
    const/16 v11, 0x73

    if-eq v2, v11, :cond_24

    const/16 v11, 0x63

    if-eq v2, v11, :cond_24

    const/16 v11, 0x74

    if-eq v2, v11, :cond_24

    const/16 v11, 0x6c

    if-eq v2, v11, :cond_24

    const/16 v11, 0x221a

    if-eq v2, v11, :cond_24

    const/16 v11, 0x65

    if-eq v2, v11, :cond_24

    const/16 v11, 0x3c0

    if-ne v2, v11, :cond_25

    :cond_24
    if-ne v5, v2, :cond_27

    :cond_25
    const/16 v11, 0x65

    if-eq v2, v11, :cond_26

    const/16 v11, 0x3c0

    if-ne v2, v11, :cond_28

    :cond_26
    if-ne v5, v2, :cond_28

    :cond_27
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u00d7"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    :goto_9
    invoke-interface {v3, v4, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_5

    :cond_28
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    goto :goto_9

    :cond_29
    const/16 v11, 0x28

    if-ne v5, v11, :cond_2a

    const/16 v11, 0xd7

    if-eq v2, v11, :cond_7

    const/16 v11, 0xf7

    if-eq v2, v11, :cond_7

    :cond_2a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\u221a"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2b

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "e^"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2b

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "sin"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2b

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "cos"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2b

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "tan"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2b

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ln("

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2b

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "log("

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2e

    :cond_2b
    const/16 v11, 0x6e

    if-eq v5, v11, :cond_2c

    const/16 v11, 0x73

    if-eq v5, v11, :cond_2c

    const/16 v11, 0x67

    if-ne v5, v11, :cond_2d

    :cond_2c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-interface {v3, v4, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_5

    :cond_2d
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-interface {v3, v4, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_5

    :cond_2e
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-interface {v3, v4, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_5
.end method

.method public insertKeyBoard(C)V
    .locals 21

    const/4 v10, 0x0

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v14

    move/from16 v6, p1

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v18

    move/from16 v0, v18

    if-ne v9, v0, :cond_2

    if-eq v13, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v13, v9}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v8

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v18

    if-eqz v18, :cond_0

    if-nez v8, :cond_3

    :cond_0
    const-string v18, "%"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "!"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "^(2)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "^("

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/text/Editable;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->originCount(Ljava/lang/StringBuilder;)I

    move-result v18

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->originCount(Ljava/lang/StringBuilder;)I

    move-result v19

    add-int v18, v18, v19

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    const v20, 0x7f070008

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/calculator/EventHandler;->setResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    invoke-static {v6}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v18

    if-eqz v18, :cond_5

    if-nez v8, :cond_5

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v6, v0, :cond_1

    :cond_5
    if-lez v8, :cond_6

    add-int/lit8 v18, v8, -0x1

    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    :cond_6
    invoke-static {v10}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-static {v6}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v18

    if-eqz v18, :cond_f

    const/4 v12, 0x0

    invoke-static {v10}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v18

    if-eqz v18, :cond_c

    if-eqz v12, :cond_7

    add-int/lit8 v8, v8, 0x1

    :cond_7
    add-int/lit8 v11, v8, -0x1

    :goto_2
    if-lez v11, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    add-int/lit8 v19, v11, -0x1

    invoke-interface/range {v18 .. v19}, Landroid/text/Editable;->charAt(I)C

    move-result v15

    invoke-static {v15}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v18

    if-nez v18, :cond_d

    move/from16 v16, v11

    :cond_8
    const/4 v5, 0x0

    if-lez v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    add-int/lit8 v19, v16, -0x1

    invoke-interface/range {v18 .. v19}, Landroid/text/Editable;->charAt(I)C

    move-result v18

    const/16 v19, 0x28

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/4 v5, 0x1

    :cond_9
    if-eqz v5, :cond_a

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-eq v6, v0, :cond_a

    const/16 v18, 0x2b

    move/from16 v0, v18

    if-ne v6, v0, :cond_b

    :cond_a
    if-nez v16, :cond_e

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-eq v6, v0, :cond_e

    :cond_b
    const-string v18, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    :goto_3
    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v8, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_c
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v8}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_2

    :cond_e
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    goto :goto_3

    :cond_f
    const/16 v18, 0x30

    move/from16 v0, v18

    if-ne v10, v0, :cond_15

    invoke-static {v6}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v18

    if-eqz v18, :cond_15

    const/16 v17, 0x0

    add-int/lit8 v11, v8, -0x1

    :goto_5
    if-ltz v11, :cond_10

    invoke-interface {v7, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v18

    if-nez v18, :cond_11

    const/16 v18, 0x2e

    move/from16 v0, v18

    if-eq v4, v0, :cond_11

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-ne v4, v0, :cond_11

    :cond_10
    :goto_6
    if-nez v17, :cond_14

    if-eqz v6, :cond_1

    add-int/lit8 v18, v8, -0x1

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v8, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_4

    :cond_11
    const/16 v18, 0x2e

    move/from16 v0, v18

    if-eq v4, v0, :cond_12

    invoke-static {v4}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v18

    if-eqz v18, :cond_13

    const/16 v18, 0x30

    move/from16 v0, v18

    if-eq v4, v0, :cond_13

    :cond_12
    const/16 v17, 0x1

    goto :goto_6

    :cond_13
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    :cond_14
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v7, v8, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_4

    :cond_15
    const/16 v18, 0x29

    move/from16 v0, v18

    if-eq v10, v0, :cond_16

    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v10, v0, :cond_16

    const/16 v18, 0x21

    move/from16 v0, v18

    if-eq v10, v0, :cond_16

    const/16 v18, 0x25

    move/from16 v0, v18

    if-eq v10, v0, :cond_16

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-ne v10, v0, :cond_17

    :cond_16
    invoke-static {v6}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v18

    if-eqz v18, :cond_17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u00d7"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v7, v8, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_4

    :cond_17
    const/16 v18, 0x29

    move/from16 v0, v18

    if-eq v10, v0, :cond_18

    invoke-static {v10}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v18

    if-eqz v18, :cond_1b

    :cond_18
    const/16 v18, 0x73

    move/from16 v0, v18

    if-eq v6, v0, :cond_19

    const/16 v18, 0x63

    move/from16 v0, v18

    if-eq v6, v0, :cond_19

    const/16 v18, 0x74

    move/from16 v0, v18

    if-eq v6, v0, :cond_19

    const/16 v18, 0x6c

    move/from16 v0, v18

    if-eq v6, v0, :cond_19

    const/16 v18, 0x221a

    move/from16 v0, v18

    if-eq v6, v0, :cond_19

    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v6, v0, :cond_19

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-ne v6, v0, :cond_1a

    :cond_19
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u00d7"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    :goto_7
    move-object/from16 v0, v18

    invoke-interface {v7, v8, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    goto :goto_7

    :cond_1b
    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v10, v0, :cond_1c

    const/16 v18, 0x21

    move/from16 v0, v18

    if-eq v10, v0, :cond_1c

    const/16 v18, 0x25

    move/from16 v0, v18

    if-eq v10, v0, :cond_1c

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-ne v10, v0, :cond_22

    :cond_1c
    const/16 v18, 0x73

    move/from16 v0, v18

    if-eq v6, v0, :cond_1d

    const/16 v18, 0x63

    move/from16 v0, v18

    if-eq v6, v0, :cond_1d

    const/16 v18, 0x74

    move/from16 v0, v18

    if-eq v6, v0, :cond_1d

    const/16 v18, 0x6c

    move/from16 v0, v18

    if-eq v6, v0, :cond_1d

    const/16 v18, 0x221a

    move/from16 v0, v18

    if-eq v6, v0, :cond_1d

    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v6, v0, :cond_1d

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-ne v6, v0, :cond_1e

    :cond_1d
    if-ne v10, v6, :cond_20

    :cond_1e
    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v6, v0, :cond_1f

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-ne v6, v0, :cond_21

    :cond_1f
    if-ne v10, v6, :cond_21

    :cond_20
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u00d7"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    :goto_8
    move-object/from16 v0, v18

    invoke-interface {v7, v8, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_4

    :cond_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    goto :goto_8

    :cond_22
    const/16 v18, 0x28

    move/from16 v0, v18

    if-ne v10, v0, :cond_23

    const/16 v18, 0xd7

    move/from16 v0, v18

    if-eq v6, v0, :cond_1

    const/16 v18, 0xf7

    move/from16 v0, v18

    if-eq v6, v0, :cond_1

    :cond_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v7, v8, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_4
.end method

.method public isArabicCharacter(C)Z
    .locals 1

    const/16 v0, 0x600

    if-le p1, v0, :cond_0

    const/16 v0, 0x6ff

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCheckResult()Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v3, v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isDisplayScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHistoryScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/History;->isHistory()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->isLongClick:Z

    return v0
.end method

.method public isMultiSelection(Landroid/widget/EditText;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/widget/EditText;->getId()I

    move-result v5

    const v6, 0x7f050004

    if-ne v5, v6, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v2

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v0

    if-eq v2, v0, :cond_1

    :goto_1
    return v3

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public isOpenedSignParenthesis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    return v0
.end method

.method public isSelecting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelecting:Z

    return v0
.end method

.method public isSelectingAll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll:Z

    return v0
.end method

.method public onAbs()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c0

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "\u00d7"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string v3, "abs("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v0

    invoke-direct {p0, v1, v0, v0}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/StringBuilder;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    return-void

    :cond_2
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x73

    if-eq v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_1

    :cond_3
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onBackspace()V
    .locals 13

    const/16 v12, 0xad

    const/16 v11, 0x28

    const/4 v10, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    iget-boolean v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    if-eqz v6, :cond_0

    iput-boolean v9, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->onClearOrigin()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v3

    const/4 v2, -0x1

    invoke-static {v1, v9}, Lcom/sec/android/app/calculator/Cmyfunc;->whereLastToken(Ljava/lang/String;Z)I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-eq v2, v8, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v12, :cond_1

    if-lez v2, :cond_1

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_1

    add-int/lit8 v2, v2, -0x1

    iput-boolean v9, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    :cond_1
    if-eq v2, v8, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_4

    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    if-eq v5, v8, :cond_3

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v12, :cond_3

    iput-boolean v10, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    const-string v6, ""

    invoke-direct {p0, v6, v0, v0}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    :goto_0
    return-void

    :cond_3
    if-lez v5, :cond_2

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-lt v6, v7, :cond_2

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7a

    if-gt v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    invoke-interface {v6, v7, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto :goto_0

    :cond_4
    iget-boolean v6, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelecting:Z

    if-eq v6, v10, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v6

    if-eq v6, v10, :cond_5

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_7

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    new-instance v7, Landroid/view/KeyEvent;

    const/16 v8, 0x43

    invoke-direct {v7, v9, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    const-string v6, ""

    invoke-direct {p0, v6, v0, v0}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto :goto_0

    :cond_7
    if-eq v2, v8, :cond_9

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_8

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v3, :cond_8

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v12, :cond_8

    iput-boolean v9, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    new-instance v7, Landroid/view/KeyEvent;

    const/16 v8, 0x43

    invoke-direct {v7, v9, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1
.end method

.method public onClear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    iput-boolean v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    invoke-static {}, Lcom/sec/android/app/calculator/Cmyfunc;->clearmOrigin()V

    iput-boolean v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    return-void
.end method

.method public onClearOrigin()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/calculator/Cmyfunc;->getmOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/calculator/Cmyfunc;->getmOrigin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    add-int v3, v2, v1

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v3

    add-int v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isOpByTwo(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x21

    if-eq v0, v3, :cond_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/calculator/Cmyfunc;->clearmOrigin()V

    goto :goto_0
.end method

.method public onDecimal()V
    .locals 10

    const/16 v9, 0x2e

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->onClear()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v6

    if-lez v6, :cond_1

    add-int/lit8 v0, v6, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    :goto_0
    return-void

    :cond_1
    if-nez v6, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v2, "0."

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    const-string v0, "0."

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    move v3, v1

    move v0, v1

    :goto_1
    if-ge v3, v6, :cond_6

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_3

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/calculator/Cmyfunc;->isToken(C)Z

    move-result v8

    if-eqz v8, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_5

    move v0, v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    if-nez v0, :cond_9

    const/16 v0, 0x29

    if-eq v7, v0, :cond_7

    const/16 v0, 0x21

    if-eq v7, v0, :cond_7

    const/16 v0, 0x65

    if-eq v7, v0, :cond_7

    const/16 v0, 0x3c0

    if-ne v7, v0, :cond_8

    :cond_7
    const-string v0, "\u00d70."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto :goto_0

    :cond_8
    invoke-static {v7}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "."

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v1

    invoke-direct {p0, v5, v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/StringBuilder;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto/16 :goto_0

    :cond_a
    const-string v0, "0."

    goto :goto_2
.end method

.method public onEnter()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->onEnter(ZI)V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    return-void
.end method

.method public onEnter(ZI)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->onClearOrigin()V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    if-eqz v8, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/calculator/EventHandler;->reCalculation()V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->repairDisplay()V

    iput-boolean v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    const-string v3, ""

    const-string v7, ""

    move v1, p2

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p0, v4, v8}, Lcom/sec/android/app/calculator/EventHandler;->evaluate(Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const/16 v10, 0xf

    invoke-static {v8, v9, v10}, Lcom/sec/android/app/calculator/EventHandler;->doubleToString(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/EventHandler;->resultFormating(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sec/android/app/calculator/SyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    :cond_1
    :goto_2
    invoke-virtual {p0, v4, v3, v1}, Lcom/sec/android/app/calculator/EventHandler;->setResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    iget-boolean v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    if-nez v8, :cond_4

    const-string v8, "Infinity"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "NaN"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/EventHandler;->changeNumFomat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-ne p1, v12, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v5, v8, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-ltz v5, :cond_6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-lez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Lcom/sec/android/app/calculator/History;->enter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v7}, Lcom/sec/android/app/calculator/Cmyfunc;->setmTrans(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sec/android/app/calculator/Cmyfunc;->setmOrigin(Ljava/lang/String;)V

    iput-boolean v12, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    :cond_4
    iput-boolean v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->clearResult()V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iput-boolean v12, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    iput-boolean v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    const-string v8, "onEnter"

    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    iput-boolean v12, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    iput-boolean v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    iget v1, v0, Lcom/sec/android/app/calculator/SyntaxException;->message:I

    iget v8, v0, Lcom/sec/android/app/calculator/SyntaxException;->position:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    const-string v8, "onEnter"

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/SyntaxException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v0

    iput-boolean v12, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsError:Z

    iput-boolean v11, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    const v1, 0x7f070001

    const-string v8, "onEnter"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public onEnterEnd()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->onClear()V

    :cond_0
    return-void
.end method

.method public onFraction()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_0

    const-string v1, "1\u00f7"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/StringBuilder;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3c0

    if-ne v1, v3, :cond_2

    :cond_1
    const-string v1, "\u00d7"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "(1\u00f7"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/StringBuilder;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto :goto_0
.end method

.method public onHisClear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/History;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->onClear()V

    return-void
.end method

.method public onParenthesis()V
    .locals 11

    const/16 v10, 0x2e

    const/16 v9, 0x25

    const/16 v8, 0x21

    const/16 v7, 0x29

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v4

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v4, :cond_a

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_1
    if-lez v0, :cond_7

    invoke-static {v1}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v0

    if-nez v0, :cond_3

    if-eq v1, v8, :cond_3

    if-eq v1, v9, :cond_3

    if-eq v1, v7, :cond_3

    const/16 v0, 0x65

    if-eq v1, v0, :cond_3

    const/16 v0, 0x3c0

    if-eq v1, v0, :cond_3

    if-ne v1, v10, :cond_5

    :cond_3
    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iput-boolean v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v1

    invoke-direct {p0, v5, v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->insertComma(Ljava/lang/StringBuilder;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    return-void

    :cond_5
    if-ne v1, v7, :cond_6

    if-lez v4, :cond_6

    const-string v0, "\u00d7("

    :goto_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string v0, "("

    goto :goto_4

    :cond_7
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x65

    if-eq v1, v0, :cond_8

    if-eq v1, v8, :cond_8

    if-eq v1, v9, :cond_8

    const/16 v0, 0x3c0

    if-eq v1, v0, :cond_8

    const/16 v0, 0x2c

    if-eq v1, v0, :cond_8

    if-eq v1, v10, :cond_8

    if-ne v1, v7, :cond_9

    :cond_8
    if-lez v4, :cond_9

    const-string v0, "\u00d7("

    :goto_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    const-string v0, "("

    goto :goto_5

    :cond_a
    move v1, v2

    goto :goto_1
.end method

.method public onPlusMinus()V
    .locals 11

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/16 v9, 0x28

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->replaceInput()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v2, "(\u00ad"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    :goto_0
    return-void

    :cond_0
    move v0, v5

    :goto_1
    if-lez v0, :cond_10

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/calculator/Cmyfunc;->isToken(C)Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x6e

    if-eq v7, v8, :cond_1

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x73

    if-ne v7, v8, :cond_6

    :cond_1
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_2

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_4

    :cond_2
    add-int/lit8 v7, v0, -0x2

    if-lez v7, :cond_4

    add-int/lit8 v7, v0, -0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x45

    if-ne v7, v8, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xad

    if-ne v7, v8, :cond_a

    if-nez v0, :cond_7

    if-ne v5, v4, :cond_7

    move v3, v0

    move v0, v2

    :goto_4
    packed-switch v0, :pswitch_data_0

    :goto_5
    if-eq v0, v2, :cond_5

    const/4 v2, 0x6

    if-ne v0, v2, :cond_e

    :cond_5
    iput-boolean v1, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->CheckInput()V

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    goto :goto_0

    :cond_6
    if-ne v0, v4, :cond_3

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/calculator/Cmyfunc;->isToken(C)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_7
    if-lez v0, :cond_8

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_8

    const/4 v3, 0x6

    move v10, v3

    move v3, v0

    move v0, v10

    goto :goto_4

    :cond_8
    if-nez v0, :cond_9

    move v3, v0

    move v0, v2

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v9, :cond_f

    move v10, v3

    move v3, v0

    move v0, v10

    goto :goto_4

    :cond_a
    if-nez v0, :cond_b

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v9, :cond_b

    move v3, v0

    move v0, v4

    goto :goto_4

    :cond_b
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_c

    const/4 v3, 0x2

    move v10, v3

    move v3, v0

    move v0, v10

    goto :goto_4

    :cond_c
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_d

    const/4 v3, 0x5

    move v10, v3

    move v3, v0

    move v0, v10

    goto :goto_4

    :cond_d
    move v10, v3

    move v3, v0

    move v0, v10

    goto :goto_4

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    const-string v5, "(\u00ad"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_5

    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    const-string v6, "(\u00ad"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_5

    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    const-string v7, ""

    invoke-interface {v5, v3, v6, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_5

    :pswitch_3
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    const-string v6, "(\u00ad"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_5

    :pswitch_4
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    const-string v6, "\u00d7(\u00ad"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_5

    :pswitch_5
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    add-int/lit8 v3, v3, 0x1

    const-string v7, ""

    invoke-interface {v5, v6, v3, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_5

    :cond_e
    iput-boolean v4, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    goto/16 :goto_6

    :cond_f
    move v3, v0

    move v0, v1

    goto/16 :goto_4

    :cond_10
    move v0, v1

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onShift(Landroid/view/View;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x3b

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelecting:Z

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :goto_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1
.end method

.method public originCount(Ljava/lang/StringBuilder;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/EventHandler;->commaCount(Ljava/lang/StringBuilder;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public removeSub(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_0
.end method

.method public repairDisplay()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_4

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    const-string v4, ")"

    invoke-interface {v3, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public replaceInput()V
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->checkError()I

    move-result v1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {p0, v6, v9}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {p0, v6, v5}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextBuilder()Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_0

    const-string v6, "(\u00ad"

    invoke-virtual {v3, v5, v9, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v9, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/StringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sub-int v6, v2, v1

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_4

    sub-int v6, v2, v1

    add-int/lit8 v2, v6, -0x1

    :goto_0
    sub-int v6, v0, v1

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_5

    sub-int v5, v0, v1

    add-int/lit8 v0, v5, -0x1

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getTextLength()I

    move-result v4

    if-le v2, v4, :cond_2

    move v2, v4

    :cond_2
    if-le v0, v4, :cond_3

    move v0, v4

    :cond_3
    if-eq v2, v0, :cond_6

    if-ne v0, v4, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5, v2, v0}, Landroid/widget/EditText;->setSelection(II)V

    :goto_2
    return-void

    :cond_4
    move v2, v5

    goto :goto_0

    :cond_5
    move v0, v5

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2
.end method

.method public resultFormating(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x45

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/calculator/EventHandler;->resultFormating(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/calculator/EventHandler;->resultFormating(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setFrontText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/calculator/EventHandler;->frontText:Ljava/lang/String;

    return-void
.end method

.method public setLongClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/calculator/EventHandler;->isLongClick:Z

    return-void
.end method

.method public setResult(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 6

    iput p3, p0, Lcom/sec/android/app/calculator/EventHandler;->lastError:I

    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sparse-switch p3, :sswitch_data_0

    if-nez p3, :cond_0

    const-string v2, "Infinity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NaN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "Infinity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NaN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const p3, 0x7f070001

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/calculator/EventHandler;->errorCursor:I

    :cond_2
    if-eqz p3, :cond_4

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/EventHandler;->setFrontText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :goto_2
    return-void

    :cond_3
    move-object v1, p2

    goto/16 :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/EventHandler;->getFrontText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/EventHandler;->setFrontText(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/16 v5, 0x43

    invoke-direct {v3, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/EventHandler;->setFrontText(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/EventHandler;->changeNumFomat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070002 -> :sswitch_0
        0x7f070003 -> :sswitch_0
        0x7f070004 -> :sswitch_0
        0x7f070016 -> :sswitch_1
    .end sparse-switch
.end method

.method public setSelecting(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelecting:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll:Z

    return-void
.end method

.method public setSelectingAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelecting:Z

    iput-boolean p1, p0, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll:Z

    return-void
.end method

.method public setSignParenthesisState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/calculator/EventHandler;->mIsOpenedSignParenthesis:Z

    return-void
.end method

.method public setmCursorState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/calculator/EventHandler;->mCursorState:Z

    return-void
.end method

.method public showCursor()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/EventHandler;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setmCursorState(Z)V

    return-void
.end method
