.class Lcom/sec/android/app/calculator/Calculator$TextSizeAdapter;
.super Landroid/widget/BaseAdapter;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/calculator/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextSizeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/calculator/Calculator;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/calculator/Calculator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator$TextSizeAdapter;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/calculator/Calculator;Lcom/sec/android/app/calculator/Calculator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/calculator/Calculator$TextSizeAdapter;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator$TextSizeAdapter;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-virtual {v3}, Lcom/sec/android/app/calculator/Calculator;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    :goto_0
    const v3, 0x7f05002e

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f05002f

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    packed-switch p1, :pswitch_data_0

    :goto_1
    invoke-static {}, Lcom/sec/android/app/calculator/Calculator;->access$1000()I

    move-result v3

    if-ne p1, v3, :cond_1

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_2
    return-object v1

    :cond_0
    move-object v1, p2

    check-cast v1, Landroid/widget/RelativeLayout;

    goto :goto_0

    :pswitch_0
    const v3, 0x7f070018

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/sec/android/app/calculator/Calculator;->access$900()F

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :pswitch_1
    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/sec/android/app/calculator/Calculator;->access$900()F

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :pswitch_2
    const v3, 0x7f07001a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/sec/android/app/calculator/Calculator;->access$900()F

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
