.class public Lcom/google/common/base/Joiner;
.super Ljava/lang/Object;
.source "Joiner.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Joiner$MapJoiner;
    }
.end annotation


# instance fields
.field private final separator:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/common/base/Joiner;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Joiner;Lcom/google/common/base/Joiner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/base/Joiner;-><init>(Lcom/google/common/base/Joiner;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/base/Joiner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/google/common/base/Joiner;
    .locals 1

    new-instance v0, Lcom/google/common/base/Joiner;

    invoke-direct {v0, p0}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/lang/Iterable;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/lang/Iterable",
            "<*>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/Appendable;Ljava/lang/Iterable;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final appendTo(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final join(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/base/Joiner$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/common/base/Joiner$1;-><init>(Lcom/google/common/base/Joiner;Lcom/google/common/base/Joiner;Ljava/lang/String;)V

    return-object v0
.end method

.method public withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;
    .locals 3

    new-instance v1, Lcom/google/common/base/Joiner$MapJoiner;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/common/base/Joiner$MapJoiner;-><init>(Lcom/google/common/base/Joiner;Ljava/lang/String;Lcom/google/common/base/Joiner$1;)V

    return-object v1
.end method
