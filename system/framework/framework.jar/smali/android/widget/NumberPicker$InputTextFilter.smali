.class Landroid/widget/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 11

    iget-object v9, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v9}, Landroid/widget/NumberPicker;->access$1000(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    move/from16 v0, p5

    invoke-interface {p4, v10, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v10

    move/from16 v0, p6

    invoke-interface {p4, v0, v10}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, ""

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :goto_0
    return-object v5

    :cond_1
    iget-object v9, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v9, v5}, Landroid/widget/NumberPicker;->access$1100(Landroid/widget/NumberPicker;Ljava/lang/String;)I

    move-result v7

    iget-object v9, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v9}, Landroid/widget/NumberPicker;->access$1200(Landroid/widget/NumberPicker;)I

    move-result v9

    if-le v7, v9, :cond_2

    const-string v5, ""

    goto :goto_0

    :cond_2
    move-object v5, v2

    goto :goto_0

    :cond_3
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v5, ""

    goto :goto_0

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    move/from16 v0, p5

    invoke-interface {p4, v10, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v10

    move/from16 v0, p6

    invoke-interface {p4, v0, v10}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v9}, Landroid/widget/NumberPicker;->access$1000(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    move/from16 v0, p5

    invoke-virtual {v7, v0, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const-string v5, ""

    goto :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    invoke-static {}, Landroid/widget/NumberPicker;->access$900()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
