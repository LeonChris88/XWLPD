.class Lcom/seven/Z7/util/Z7Marshaller$CountOutputStream;
.super Ljava/io/OutputStream;
.source "Z7Marshaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/util/Z7Marshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountOutputStream"
.end annotation


# instance fields
.field count:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/seven/Z7/util/Z7Marshaller$CountOutputStream;->count:I

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1

    iget v0, p0, Lcom/seven/Z7/util/Z7Marshaller$CountOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/seven/Z7/util/Z7Marshaller$CountOutputStream;->count:I

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget v0, p0, Lcom/seven/Z7/util/Z7Marshaller$CountOutputStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/seven/Z7/util/Z7Marshaller$CountOutputStream;->count:I

    return-void
.end method
