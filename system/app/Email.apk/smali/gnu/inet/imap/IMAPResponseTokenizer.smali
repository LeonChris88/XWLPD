.class public Lgnu/inet/imap/IMAPResponseTokenizer;
.super Ljava/lang/Object;
.source "IMAPResponseTokenizer.java"

# interfaces
.implements Lgnu/inet/imap/IMAPConstants;


# instance fields
.field private buffer:[B

.field protected in:Ljava/io/InputStream;


# virtual methods
.method mark(I)V
    .locals 5

    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    array-length v0, v0

    add-int/lit8 v1, p1, 0x1

    if-ge v1, v0, :cond_0

    sub-int/2addr v0, v1

    new-array v2, v0, [B

    iget-object v3, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    goto :goto_0
.end method

.method public next()Lgnu/inet/imap/IMAPResponse;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lgnu/inet/imap/IMAPResponseTokenizer;->read(Z)[B

    move-result-object v9

    if-nez v9, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    array-length v10, v9

    new-instance v7, Lgnu/inet/imap/IMAPResponse;

    invoke-direct {v7}, Lgnu/inet/imap/IMAPResponse;-><init>()V

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    new-instance v12, Ljava/util/Stack;

    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v8, v1

    :goto_1
    if-ge v8, v10, :cond_22

    aget-byte v13, v9, v8

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_2
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move-object v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_1

    :pswitch_0
    if-nez v8, :cond_2

    const/16 v1, 0x2a

    if-ne v13, v1, :cond_2

    const-string v1, "*"

    iput-object v1, v7, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_3

    :cond_2
    if-nez v8, :cond_3

    const/16 v1, 0x2b

    if-ne v13, v1, :cond_3

    const-string v1, "+"

    iput-object v1, v7, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_3

    :cond_3
    const/16 v1, 0x20

    if-ne v13, v1, :cond_6

    iget-object v1, v7, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    const-string v13, "US-ASCII"

    invoke-direct {v3, v1, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, v7, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    :cond_4
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {v7}, Lgnu/inet/imap/IMAPResponse;->isContinuation()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto :goto_3

    :cond_6
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_3

    :pswitch_1
    const/16 v1, 0x30

    if-lt v13, v1, :cond_7

    const/16 v1, 0x39

    if-le v13, v1, :cond_23

    :cond_7
    const/4 v1, 0x2

    :goto_4
    const/16 v3, 0x20

    if-ne v13, v3, :cond_8

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance v3, Ljava/lang/String;

    const-string v13, "US-ASCII"

    invoke-direct {v3, v1, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lgnu/inet/imap/IMAPResponse;->count:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    :catch_0
    move-exception v1

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting number: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    :pswitch_2
    const/16 v1, 0x20

    if-ne v13, v1, :cond_9

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance v3, Ljava/lang/String;

    const-string v13, "US-ASCII"

    invoke-direct {v3, v1, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    const/4 v1, 0x3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    :cond_9
    const/16 v1, 0xa

    if-ne v13, v1, :cond_a

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lgnu/inet/imap/IMAPResponseTokenizer;->mark(I)V

    move-object v1, v7

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xd

    if-eq v13, v1, :cond_1

    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_3

    :pswitch_3
    const/16 v1, 0x28

    if-eq v13, v1, :cond_b

    const/16 v1, 0x5b

    if-ne v13, v1, :cond_c

    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lgnu/inet/imap/IMAPResponse;->code:Ljava/util/List;

    invoke-virtual {v12, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    :cond_c
    iget-object v1, v7, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    const-string v3, "FETCH"

    if-ne v1, v3, :cond_d

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v11, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x2

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    :cond_d
    iget-object v1, v7, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    const-string v3, "STATUS"

    if-ne v1, v3, :cond_e

    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x8

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x7

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    :pswitch_4
    const/16 v1, 0x20

    if-ne v13, v1, :cond_f

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lgnu/inet/imap/IMAPResponse;->mailbox:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v1, 0x3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_3

    :pswitch_5
    const/16 v1, 0x22

    if-ne v13, v1, :cond_11

    if-nez v2, :cond_10

    const/4 v1, 0x1

    :goto_5
    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_3

    :cond_10
    const/4 v1, 0x0

    goto :goto_5

    :cond_11
    if-eqz v2, :cond_12

    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_3

    :cond_12
    const/16 v1, 0x28

    if-eq v13, v1, :cond_13

    const/16 v1, 0x5b

    if-ne v13, v1, :cond_15

    :cond_13
    invoke-virtual {v12}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    if-lez v14, :cond_14

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    new-instance v15, Ljava/lang/String;

    const-string v16, "US-ASCII"

    move-object/from16 v0, v16

    invoke-direct {v15, v14, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lgnu/inet/imap/Pair;

    invoke-direct {v15, v14, v13}, Lgnu/inet/imap/Pair;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_6
    invoke-virtual {v12, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_3

    :cond_14
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_15
    const/16 v1, 0x29

    if-eq v13, v1, :cond_16

    const/16 v1, 0x5d

    if-ne v13, v1, :cond_18

    :cond_16
    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    if-lez v13, :cond_17

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    const-string v15, "US-ASCII"

    invoke-direct {v14, v13, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_17
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_3

    :cond_18
    const/16 v1, 0x7b

    if-ne v13, v1, :cond_19

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v1, 0x5

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    :cond_19
    const/16 v1, 0x20

    if-ne v13, v1, :cond_1c

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x7

    move v3, v4

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    :cond_1a
    invoke-virtual {v12}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    if-lez v13, :cond_1b

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    const-string v15, "US-ASCII"

    invoke-direct {v14, v13, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_1b
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_3

    :cond_1c
    const/16 v1, 0xa

    if-ne v13, v1, :cond_1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lgnu/inet/imap/IMAPResponseTokenizer;->mark(I)V

    move-object v1, v7

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0xd

    if-eq v13, v1, :cond_1

    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_3

    :pswitch_6
    const/16 v1, 0x7d

    if-ne v13, v1, :cond_1e

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance v4, Ljava/lang/String;

    const-string v13, "US-ASCII"

    invoke-direct {v4, v1, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    move v4, v5

    move-object v5, v6

    move/from16 v17, v1

    move v1, v2

    move v2, v3

    move/from16 v3, v17

    goto/16 :goto_3

    :catch_1
    move-exception v1

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    const/16 v1, 0xa

    if-ne v13, v1, :cond_1f

    const/4 v1, 0x6

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    move/from16 v18, v4

    move v4, v3

    move/from16 v3, v18

    goto/16 :goto_3

    :cond_1f
    const/16 v1, 0xd

    if-eq v13, v1, :cond_1

    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_3

    :pswitch_7
    if-lt v5, v4, :cond_20

    invoke-virtual {v12}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v1, 0x4

    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    move/from16 v18, v4

    move v4, v5

    move-object v5, v3

    move/from16 v3, v18

    goto/16 :goto_3

    :cond_20
    invoke-virtual {v6, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v5, 0x1

    move-object v5, v6

    move/from16 v17, v3

    move v3, v4

    move v4, v1

    move v1, v2

    move/from16 v2, v17

    goto/16 :goto_3

    :pswitch_8
    const/16 v1, 0xa

    if-ne v13, v1, :cond_21

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v7, Lgnu/inet/imap/IMAPResponse;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lgnu/inet/imap/IMAPResponseTokenizer;->mark(I)V

    move-object v1, v7

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0xd

    if-eq v13, v1, :cond_1

    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    :cond_22
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lgnu/inet/imap/IMAPResponseTokenizer;->read(Z)[B

    invoke-virtual/range {p0 .. p0}, Lgnu/inet/imap/IMAPResponseTokenizer;->next()Lgnu/inet/imap/IMAPResponse;

    move-result-object v1

    goto/16 :goto_0

    :cond_23
    move v1, v3

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 0x1
        0x46t
        0x45t
        0x54t
        0x43t
        0x48t
        0x20t
    .end array-data
.end method

.method read(Z)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    const/16 v0, 0x1000

    :cond_1
    new-array v3, v0, [B

    move v2, v1

    :goto_1
    if-nez v2, :cond_2

    iget-object v2, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    if-ne v2, v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    add-int v4, v0, v2

    new-array v4, v4, [B

    if-eqz v0, :cond_4

    iget-object v5, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lgnu/inet/imap/IMAPResponseTokenizer;->buffer:[B

    array-length v0, v0

    goto :goto_2
.end method
