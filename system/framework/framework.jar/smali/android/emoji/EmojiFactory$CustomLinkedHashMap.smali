.class Landroid/emoji/EmojiFactory$CustomLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "EmojiFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emoji/EmojiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomLinkedHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/emoji/EmojiFactory;


# direct methods
.method public constructor <init>(Landroid/emoji/EmojiFactory;)V
    .locals 3

    iput-object p1, p0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;->this$0:Landroid/emoji/EmojiFactory;

    const/16 v0, 0x10

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;->size()I

    move-result v0

    iget-object v1, p0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;->this$0:Landroid/emoji/EmojiFactory;

    invoke-static {v1}, Landroid/emoji/EmojiFactory;->access$000(Landroid/emoji/EmojiFactory;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
