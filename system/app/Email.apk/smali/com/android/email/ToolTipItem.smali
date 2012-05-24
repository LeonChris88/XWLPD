.class Lcom/android/email/ToolTipItem;
.super Ljava/lang/Object;
.source "ToolTip.java"


# instance fields
.field bounds:Landroid/graphics/Rect;

.field mstrText:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "ToolTip"

    invoke-direct {p0, v0}, Lcom/android/email/ToolTipItem;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/ToolTipItem;->type:I

    iput-object p1, p0, Lcom/android/email/ToolTipItem;->mstrText:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/email/ToolTipItem;->bounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onItemSelected()V
    .locals 0

    return-void
.end method
