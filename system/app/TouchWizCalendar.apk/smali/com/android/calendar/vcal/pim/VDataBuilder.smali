.class public Lcom/android/calendar/vcal/pim/VDataBuilder;
.super Ljava/lang/Object;
.source "VDataBuilder.java"

# interfaces
.implements Lcom/android/calendar/vcal/pim/VBuilder;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCharset:Ljava/lang/String;

.field private mCurrentParamType:Ljava/lang/String;

.field private mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

.field private mCurrentVNode:Lcom/android/calendar/vcal/pim/VNode;

.field private mNodeListPos:I

.field private mStrictLineBreakParsing:Z

.field public vNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/vcal/pim/VNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "VDATABuilder"

    sput-object v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iput v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCharset:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mStrictLineBreakParsing:Z

    return-void
.end method

.method private encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCharset:Ljava/lang/String;

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v3

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private listToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public end()V
    .locals 0

    return-void
.end method

.method public endProperty()V
    .locals 0

    return-void
.end method

.method public endRecord()V
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/vcal/pim/VNode;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/calendar/vcal/pim/VNode;->parseStatus:I

    :cond_0
    iget v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/vcal/pim/VNode;

    iget v1, v1, Lcom/android/calendar/vcal/pim/VNode;->parseStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/vcal/pim/VNode;

    iput-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentVNode:Lcom/android/calendar/vcal/pim/VNode;

    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/calendar/vcal/pim/PropertyNode;

    invoke-direct {v0}, Lcom/android/calendar/vcal/pim/PropertyNode;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    iget-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    iput-object p1, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public propertyValues(Ljava/util/List;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v24, "CHARSET"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v19, 0x0

    const-string v24, "ENCODING"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    const-string v24, "ENCODING"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v24, "BASE64"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "B"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v25, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v26, " "

    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v26, "\t"

    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v26, "\r\n"

    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_bytes:[B

    :cond_1
    const-string v24, "QUOTED-PRINTABLE"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    const/16 v20, 0x0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "= ="

    const-string v25, "="

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "= "

    const-string v26, " "

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "=\t"

    const-string v26, "\t"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mStrictLineBreakParsing:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    const-string v24, "\r\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v15

    array-length v13, v3

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v13, :cond_5

    aget-object v14, v3, v11

    const-string v24, "="

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    const/16 v24, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :cond_3
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    const-string v24, "\r\n"

    const-string v25, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "\r"

    const-string v26, "\n"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    if-eqz v6, :cond_2

    if-eqz v7, :cond_7

    :try_start_1
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    array-length v0, v6

    move/from16 v24, v0

    add-int v20, v20, v24

    goto/16 :goto_0

    :catch_0
    move-exception v8

    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_4
    if-nez v19, :cond_d

    if-eqz v7, :cond_c

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v7}, Lcom/android/calendar/vcal/pim/VDataBuilder;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_a

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    :try_start_3
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/calendar/vcal/pim/VDataBuilder;->listToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v24, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_bytes:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_bytes:[B

    move-object/from16 v21, v0

    const/4 v12, 0x0

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const/16 v24, 0x0

    array-length v0, v6

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v6, v0, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v6

    move/from16 v24, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int v12, v12, v24

    goto :goto_6

    :cond_9
    const/16 v19, 0x1

    goto/16 :goto_4

    :cond_a
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_b
    move-object/from16 p1, v22

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p1}, Lcom/android/calendar/vcal/pim/VDataBuilder;->listToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentVNode:Lcom/android/calendar/vcal/pim/VNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VNode;->propList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentPropNode:Lcom/android/calendar/vcal/pim/PropertyNode;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startProperty()V
    .locals 0

    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/calendar/vcal/pim/VNode;

    invoke-direct {v0}, Lcom/android/calendar/vcal/pim/VNode;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/calendar/vcal/pim/VNode;->parseStatus:I

    iput-object p1, v0, Lcom/android/calendar/vcal/pim/VNode;->VName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/vcal/pim/VNode;

    iput-object v1, p0, Lcom/android/calendar/vcal/pim/VDataBuilder;->mCurrentVNode:Lcom/android/calendar/vcal/pim/VNode;

    return-void
.end method
