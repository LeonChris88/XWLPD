.class Lcom/sec/android/app/calculator/Calculator$2;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/calculator/Calculator;->initControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/calculator/Calculator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/calculator/Calculator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator$2;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, p2

    :goto_0
    if-ge v2, p3, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x3d

    if-ne v7, v8, :cond_4

    const/4 v3, 0x1

    move p3, v2

    :cond_0
    if-nez v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/Calculator$2;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-virtual {v8}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_2

    move v2, p2

    :goto_1
    if-ge v2, p3, :cond_2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v1, 0x1

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v1, :cond_8

    sub-int v5, p3, p2

    new-array v6, v5, [C

    const/4 v7, 0x0

    invoke-static {p1, p2, p3, v6, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_6

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v7, v4, 0x1

    sub-int v8, v5, v4

    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, -0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8, v5}, Ljava/lang/String;-><init>([CII)V

    :goto_3
    return-object v7

    :cond_7
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    goto :goto_3
.end method
