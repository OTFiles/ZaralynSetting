.class Lcom/android/music/MusicAlphabetIndexer;
.super Landroid/widget/AlphabetIndexer;
.source "MusicAlphabetIndexer.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "sortedColumnIndex"    # I
    .param p3, "alphabet"    # Ljava/lang/CharSequence;

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "letter"    # Ljava/lang/String;

    .line 36
    invoke-static {p1}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "wordKey":Ljava/lang/String;
    invoke-static {p2}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "letterKey":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    const/4 v2, 0x0

    return v2

    .line 41
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method
