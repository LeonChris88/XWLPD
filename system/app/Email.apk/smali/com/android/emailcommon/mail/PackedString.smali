.class public Lcom/android/emailcommon/mail/PackedString;
.super Ljava/lang/Object;
.source "PackedString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/mail/PackedString$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExploded:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/emailcommon/mail/PackedString;->EMPTY_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/emailcommon/mail/PackedString;->mString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mExploded:Ljava/util/HashMap;

    return-void
.end method

.method private static explode(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    sget-object v3, Lcom/android/emailcommon/mail/PackedString;->EMPTY_MAP:Ljava/util/HashMap;

    :cond_1
    return-object v3

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    :goto_0
    if-ge v1, v2, :cond_1

    const/4 v7, 0x1

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v8, :cond_3

    move v0, v2

    :cond_3
    if-eq v5, v8, :cond_4

    if-gt v0, v5, :cond_5

    :cond_4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto :goto_1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mExploded:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mString:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/PackedString;->explode(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mExploded:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mExploded:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
