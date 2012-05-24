.class public Lgnu/mail/providers/imap/IMAPFolder;
.super Ljavax/mail/Folder;
.source "IMAPFolder.java"

# interfaces
.implements Ljavax/mail/UIDFolder;


# static fields
.field private static searchdf:Ljava/text/DateFormat;


# instance fields
.field protected delimiter:C

.field protected messageCount:I

.field protected newMessageCount:I

.field protected path:Ljava/lang/String;

.field protected permanentFlags:Ljavax/mail/Flags;

.field protected type:I

.field protected uidValidity:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d-MMM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mail/providers/imap/IMAPFolder;->searchdf:Ljava/text/DateFormat;

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Store;Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lgnu/mail/providers/imap/IMAPFolder;-><init>(Ljavax/mail/Store;Ljava/lang/String;IC)V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Store;Ljava/lang/String;IC)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    iput v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    iput v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->newMessageCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->uidValidity:J

    iput-object p2, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    iput p3, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    iput-char p4, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C

    return-void
.end method

.method private addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z
    .locals 8

    const/4 v2, 0x0

    const/16 v7, 0x22

    const/4 v1, 0x0

    const/16 v6, 0x20

    instance-of v0, p1, Ljavax/mail/search/AndTerm;

    if-eqz v0, :cond_2

    check-cast p1, Ljavax/mail/search/AndTerm;

    invoke-virtual {p1}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v3, v2, v0

    invoke-direct {p0, v3, p2}, Lgnu/mail/providers/imap/IMAPFolder;->addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljavax/mail/search/OrTerm;

    if-eqz v0, :cond_3

    const-string v0, "OR"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast p1, Ljavax/mail/search/OrTerm;

    invoke-virtual {p1}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v2

    move v0, v1

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v3, v2, v0

    invoke-direct {p0, v3, p2}, Lgnu/mail/providers/imap/IMAPFolder;->addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    instance-of v0, p1, Ljavax/mail/search/NotTerm;

    if-eqz v0, :cond_5

    const-string v0, "NOT"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast p1, Ljavax/mail/search/NotTerm;

    invoke-virtual {p1}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lgnu/mail/providers/imap/IMAPFolder;->addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    :goto_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Ljavax/mail/search/FlagTerm;

    if-eqz v0, :cond_14

    check-cast p1, Ljavax/mail/search/FlagTerm;

    invoke-virtual {p1}, Ljavax/mail/search/FlagTerm;->getFlags()Ljavax/mail/Flags;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/mail/search/FlagTerm;->getTestSet()Z

    move-result v4

    invoke-virtual {v3}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v5

    move v0, v1

    :goto_4
    array-length v2, v5

    if-ge v0, v2, :cond_12

    aget-object v2, v5, v0

    sget-object v6, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_8

    if-eqz v4, :cond_7

    const-string v2, "ANSWERED"

    :goto_5
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    const-string v2, "UNANSWERED"

    goto :goto_5

    :cond_8
    sget-object v6, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_a

    if-eqz v4, :cond_9

    const-string v2, "DELETED"

    :goto_7
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    const-string v2, "UNDELETED"

    goto :goto_7

    :cond_a
    sget-object v6, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_c

    if-eqz v4, :cond_b

    const-string v2, "DRAFT"

    :goto_8
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    const-string v2, "UNDRAFT"

    goto :goto_8

    :cond_c
    sget-object v6, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_e

    if-eqz v4, :cond_d

    const-string v2, "FLAGGED"

    :goto_9
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    const-string v2, "UNFLAGGED"

    goto :goto_9

    :cond_e
    sget-object v6, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_10

    if-eqz v4, :cond_f

    const-string v2, "RECENT"

    :goto_a
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    const-string v2, "OLD"

    goto :goto_a

    :cond_10
    sget-object v6, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_6

    if-eqz v4, :cond_11

    const-string v2, "SEEN"

    :goto_b
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    const-string v2, "UNSEEN"

    goto :goto_b

    :cond_12
    invoke-virtual {v3}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v2

    :goto_c
    array-length v0, v2

    if-ge v1, v0, :cond_4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v4, :cond_13

    const-string v0, "KEYWORD"

    :goto_d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v0, v2, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_13
    const-string v0, "UNKEYWORD"

    goto :goto_d

    :cond_14
    instance-of v0, p1, Ljavax/mail/search/AddressTerm;

    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Ljavax/mail/search/AddressTerm;

    invoke-virtual {v0}, Ljavax/mail/search/AddressTerm;->getAddress()Ljavax/mail/Address;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    instance-of v4, p1, Ljavax/mail/search/FromTerm;

    if-eqz v4, :cond_15

    const-string v2, "FROM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_e
    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_15
    instance-of v4, p1, Ljavax/mail/search/RecipientTerm;

    if-eqz v4, :cond_19

    check-cast p1, Ljavax/mail/search/RecipientTerm;

    invoke-virtual {p1}, Ljavax/mail/search/RecipientTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v4

    sget-object v5, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne v4, v5, :cond_16

    const-string v2, "TO"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_16
    sget-object v5, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne v4, v5, :cond_17

    const-string v2, "CC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_17
    sget-object v5, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne v4, v5, :cond_18

    const-string v2, "BCC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_18
    move-object v0, v2

    goto :goto_e

    :cond_19
    move-object v0, v2

    goto :goto_e

    :cond_1a
    instance-of v0, p1, Ljavax/mail/search/ComparisonTerm;

    if-eqz v0, :cond_1d

    instance-of v0, p1, Ljavax/mail/search/DateTerm;

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Ljavax/mail/search/DateTerm;

    invoke-virtual {v0}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    packed-switch v0, :pswitch_data_0

    :goto_f
    :pswitch_0
    instance-of v3, p1, Ljavax/mail/search/SentDateTerm;

    if-eqz v3, :cond_1b

    const-string v3, "SENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1b
    packed-switch v0, :pswitch_data_1

    :goto_10
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v0, Lgnu/mail/providers/imap/IMAPFolder;->searchdf:Ljava/text/DateFormat;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_1
    const-string v3, "NOT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f

    :pswitch_2
    const-string v0, "ON"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    :pswitch_3
    const-string v0, "BEFORE"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    :pswitch_4
    const-string v0, "SINCE"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_1c
    instance-of v0, p1, Ljavax/mail/search/IntegerComparisonTerm;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljavax/mail/search/IntegerComparisonTerm;

    invoke-virtual {v0}, Ljavax/mail/search/IntegerComparisonTerm;->getNumber()I

    move-result v2

    invoke-virtual {v0}, Ljavax/mail/search/IntegerComparisonTerm;->getComparison()I

    move-result v0

    instance-of v3, p1, Ljavax/mail/search/SizeTerm;

    if-eqz v3, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    packed-switch v0, :pswitch_data_2

    :goto_11
    :pswitch_5
    packed-switch v0, :pswitch_data_3

    :goto_12
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_6
    const-string v3, "NOT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_11

    :pswitch_7
    const-string v0, "OR"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "SMALLER"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "LARGER"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_12

    :pswitch_8
    const-string v0, "SMALLER"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_12

    :pswitch_9
    const-string v0, "LARGER"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_12

    :cond_1d
    instance-of v0, p1, Ljavax/mail/search/StringTerm;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/mail/search/StringTerm;

    invoke-virtual {v0}, Ljavax/mail/search/StringTerm;->getPattern()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    instance-of v4, p1, Ljavax/mail/search/BodyTerm;

    if-eqz v4, :cond_1f

    const-string v2, "BODY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v0

    :cond_1e
    :goto_13
    if-eqz v2, :cond_0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1f
    instance-of v4, p1, Ljavax/mail/search/HeaderTerm;

    if-eqz v4, :cond_20

    const-string v2, "HEADER"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    check-cast p1, Ljavax/mail/search/HeaderTerm;

    invoke-virtual {p1}, Ljavax/mail/search/HeaderTerm;->getHeaderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v0

    goto :goto_13

    :cond_20
    instance-of v4, p1, Ljavax/mail/search/SubjectTerm;

    if-eqz v4, :cond_21

    const-string v2, "SUBJECT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v0

    goto :goto_13

    :cond_21
    instance-of v4, p1, Ljavax/mail/search/MessageIDTerm;

    if-eqz v4, :cond_1e

    const-string v2, "HEADER"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "Message-ID"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v0

    goto :goto_13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lgnu/mail/providers/imap/IMAPFolder;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/mail/providers/imap/IMAPFolder;

    iget-object v0, p1, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->getType()I
    :try_end_0
    .catch Ljavax/mail/FolderNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "BODY.PEEK[]"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    sget-object v0, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FLAGS"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "INTERNALDATE"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    :cond_3
    :goto_1
    return-void

    :cond_4
    sget-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "BODY.PEEK[HEADER]"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    array-length v0, v2

    if-lez v0, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v0, "BODY.PEEK[HEADER.FIELDS("

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_2
    array-length v5, v2

    if-ge v0, v5, :cond_7

    if-lez v0, :cond_6

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    new-array v4, v0, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v0, p1

    new-array v5, v0, [Lgnu/mail/providers/imap/IMAPMessage;

    array-length v0, p1

    new-array v6, v0, [I

    move v2, v1

    :goto_3
    :try_start_0
    array-length v0, p1

    if-ge v2, v0, :cond_9

    aget-object v0, p1, v2

    check-cast v0, Lgnu/mail/providers/imap/IMAPMessage;

    aput-object v0, v5, v2

    aget-object v0, v5, v2

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPMessage;->getMessageNumber()I

    move-result v0

    aput v0, v6, v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Only IMAPMessages can be fetched"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v7

    :try_start_1
    monitor-enter v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v7, v6, v4}, Lgnu/inet/imap/IMAPConnection;->fetch([I[Ljava/lang/String;)[Lgnu/inet/imap/MessageStatus;

    move-result-object v4

    move v3, v1

    :goto_4
    array-length v2, v4

    if-ge v3, v2, :cond_c

    aget-object v2, v4, v3

    invoke-virtual {v2}, Lgnu/inet/imap/MessageStatus;->getMessageNumber()I

    move-result v8

    move v2, v1

    :goto_5
    array-length v9, v6

    if-ge v2, v9, :cond_a

    aget v9, v6, v2

    if-ne v9, v8, :cond_b

    aget-object v2, v5, v2

    aget-object v8, v4, v3

    invoke-virtual {v2, v8}, Lgnu/mail/providers/imap/IMAPMessage;->update(Lgnu/inet/imap/MessageStatus;)V

    :cond_a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-char v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lgnu/mail/providers/imap/IMAPFolder;

    iget-object v2, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->getSeparator()C

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lgnu/mail/providers/imap/IMAPFolder;-><init>(Ljavax/mail/Store;Ljava/lang/String;IC)V

    return-object v1
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage(I)Ljavax/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget v0, p0, Ljavax/mail/Folder;->mode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    :cond_0
    new-instance v0, Lgnu/mail/providers/imap/IMAPMessage;

    invoke-direct {v0, p0, p1}, Lgnu/mail/providers/imap/IMAPMessage;-><init>(Lgnu/mail/providers/imap/IMAPFolder;I)V

    return-object v0
.end method

.method public getMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v1

    :try_start_0
    iget v2, p0, Ljavax/mail/Folder;->mode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    if-gez v2, :cond_3

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MESSAGES"

    aput-object v4, v2, v3

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lgnu/inet/imap/IMAPConnection;->status(Ljava/lang/String;[Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {p0, v2, v3}, Lgnu/mail/providers/imap/IMAPFolder;->update(Lgnu/inet/imap/MailboxStatus;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V

    :cond_2
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    return v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3
    :try_start_5
    monitor-enter v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-virtual {v1}, Lgnu/inet/imap/IMAPConnection;->noop()Lgnu/inet/imap/MailboxStatus;

    move-result-object v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :try_start_7
    invoke-virtual {p0, v2, v3}, Lgnu/mail/providers/imap/IMAPFolder;->update(Lgnu/inet/imap/MailboxStatus;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
.end method

.method public getSeparator()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-char v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C

    if-nez v0, :cond_1

    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v1

    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgnu/inet/imap/IMAPConnection;->list(Ljava/lang/String;Ljava/lang/String;)[Lgnu/inet/imap/ListEntry;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V

    :cond_0
    array-length v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lgnu/inet/imap/ListEntry;->getDelimiter()C

    move-result v0

    iput-char v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    iget-char v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C

    return v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    :try_start_5
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public getType()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->getSeparator()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    const-string v0, ""

    move-object v2, v0

    :goto_0
    if-ne v1, v3, :cond_3

    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v3

    :try_start_0
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3, v2, v1}, Lgnu/inet/imap/IMAPConnection;->list(Ljava/lang/String;Ljava/lang/String;)[Lgnu/inet/imap/ListEntry;

    move-result-object v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    array-length v0, v1

    if-lez v0, :cond_4

    const-string v0, ""

    iget-object v2, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lgnu/inet/imap/ListEntry;->isNoinferiors()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    return v0

    :cond_2
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_4
    :try_start_5
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public isOpen()Z
    .locals 2

    iget v0, p0, Ljavax/mail/Folder;->mode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v2

    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    :try_start_1
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :pswitch_0
    :try_start_3
    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lgnu/inet/imap/IMAPConnection;->select(Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;

    move-result-object v1

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lgnu/mail/providers/imap/IMAPFolder;->update(Lgnu/inet/imap/MailboxStatus;Z)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0, p0}, Lgnu/mail/providers/imap/IMAPStore;->setSelected(Lgnu/mail/providers/imap/IMAPFolder;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgnu/mail/providers/imap/IMAPFolder;->notifyConnectionListeners(I)V

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return-void

    :pswitch_1
    :try_start_5
    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lgnu/inet/imap/IMAPConnection;->examine(Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method readFlags(Ljava/util/List;)Ljavax/mail/Flags;
    .locals 5

    new-instance v2, Ljavax/mail/Flags;

    invoke-direct {v2}, Ljavax/mail/Flags;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "\\Answered"

    if-ne v0, v4, :cond_1

    sget-object v0, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v4, "\\Deleted"

    if-ne v0, v4, :cond_2

    sget-object v0, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    :cond_2
    const-string v4, "\\Draft"

    if-ne v0, v4, :cond_3

    sget-object v0, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    :cond_3
    const-string v4, "\\Flagged"

    if-ne v0, v4, :cond_4

    sget-object v0, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    :cond_4
    const-string v4, "\\Recent"

    if-ne v0, v4, :cond_5

    sget-object v0, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    :cond_5
    const-string v4, "\\Seen"

    if-ne v0, v4, :cond_0

    sget-object v0, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    :cond_6
    return-object v2
.end method

.method public search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/mail/providers/imap/IMAPFolder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_1

    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v4

    if-lez v0, :cond_0

    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0, p1, v2}, Lgnu/mail/providers/imap/IMAPFolder;->addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v2

    if-eqz v3, :cond_5

    :try_start_0
    array-length v3, v4

    if-lez v3, :cond_5

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3, v4}, Lgnu/inet/imap/IMAPConnection;->search(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    array-length v4, v3

    new-array p2, v4, [Ljavax/mail/Message;

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    new-instance v4, Lgnu/mail/providers/imap/IMAPMessage;

    aget v5, v3, v1

    invoke-direct {v4, p0, v5}, Lgnu/mail/providers/imap/IMAPMessage;-><init>(Lgnu/mail/providers/imap/IMAPFolder;I)V

    aput-object v4, p2, v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3
    :try_start_5
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V

    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0

    return-object v0

    :cond_5
    if-nez p2, :cond_4

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->getMessages()[Ljavax/mail/Message;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object p2

    goto :goto_2
.end method

.method update(Lgnu/inet/imap/MailboxStatus;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljavax/mail/FolderNotFoundException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    :cond_0
    iget-boolean v0, p1, Lgnu/inet/imap/MailboxStatus;->readWrite:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Ljavax/mail/Folder;->mode:I

    iget-object v0, p1, Lgnu/inet/imap/MailboxStatus;->permanentFlags:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lgnu/inet/imap/MailboxStatus;->permanentFlags:Ljava/util/List;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPFolder;->readFlags(Ljava/util/List;)Ljavax/mail/Flags;

    move-result-object v0

    iput-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    :cond_1
    iget v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    iget v0, p1, Lgnu/inet/imap/MailboxStatus;->messageCount:I

    iput v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    iget v0, p1, Lgnu/inet/imap/MailboxStatus;->newMessageCount:I

    iput v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->newMessageCount:I

    iget v0, p1, Lgnu/inet/imap/MailboxStatus;->uidValidity:I

    int-to-long v2, v0

    iput-wide v2, p0, Lgnu/mail/providers/imap/IMAPFolder;->uidValidity:J

    if-eqz p2, :cond_4

    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    if-le v0, v1, :cond_5

    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    sub-int/2addr v0, v1

    new-array v2, v0, [Ljavax/mail/Message;

    move v0, v1

    :goto_1
    iget v3, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    if-ge v0, v3, :cond_3

    sub-int v3, v0, v1

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lgnu/mail/providers/imap/IMAPFolder;->notifyMessageAddedListeners([Ljavax/mail/Message;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    if-ge v0, v1, :cond_4

    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    sub-int v0, v1, v0

    new-array v2, v0, [Ljavax/mail/Message;

    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    :goto_3
    if-ge v0, v1, :cond_6

    iget v3, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lgnu/mail/providers/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    goto :goto_2
.end method
