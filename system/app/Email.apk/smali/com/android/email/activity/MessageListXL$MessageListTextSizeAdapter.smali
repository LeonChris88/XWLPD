.class public Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageListTextSizeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/MessageListXL$TextSizeItem;",
        ">;"
    }
.end annotation


# instance fields
.field itemTextColor:Landroid/content/res/ColorStateList;

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListXL$TextSizeItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageListXL;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListXL$TextSizeItem;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x2

    const/16 v6, 0xc8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v7, [[I

    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v4, [I

    aput-object v2, v1, v5

    new-array v2, v7, [I

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v2, v4

    const/high16 v3, -0x100

    aput v3, v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;->itemTextColor:Landroid/content/res/ColorStateList;

    iput-object p4, p0, Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    move-object v2, p2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXL;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04009e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageListXL$TextSizeItem;

    if-eqz v1, :cond_1

    const v3, 0x7f100276

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL$TextSizeItem;->getTextSizeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;->itemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL$TextSizeItem;->getTextSize()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-object v2
.end method
