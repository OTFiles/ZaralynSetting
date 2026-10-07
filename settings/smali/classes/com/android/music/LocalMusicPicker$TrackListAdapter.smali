.class Lcom/android/music/LocalMusicPicker$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "LocalMusicPicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/LocalMusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mDataIdx:I

.field private mDurationIdx:I

.field private mIdIdx:I

.field private mIndexer:Lcom/android/music/MusicAlphabetIndexer;

.field private mIndexerSortMode:I

.field final mListHeaderView:Landroid/view/View;

.field final mListView:Landroid/widget/ListView;

.field private mLoading:Z

.field private mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/music/LocalMusicPicker;


# direct methods
.method constructor <init>(Lcom/android/music/LocalMusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/music/LocalMusicPicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listView"    # Landroid/widget/ListView;
    .param p4, "layout"    # I
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .line 239
    iput-object p1, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    .line 240
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mLoading:Z

    .line 241
    iput-object p3, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mListView:Landroid/widget/ListView;

    .line 242
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 243
    new-instance v0, Landroid/view/ViewStub;

    invoke-direct {v0, p2}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mListHeaderView:Landroid/view/View;

    .line 245
    const v0, 0x7f120ee5

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 246
    const v0, 0x7f120ee3

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 247
    return-void
.end method

.method private isEncoding(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    move-object/from16 v1, p0

    .line 315
    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;

    .line 316
    .local v3, "vh":Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;
    iget v0, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mTitleIdx:I

    iget-object v4, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {v2, v0, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 319
    iget-object v0, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v4, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v4, v4, Landroid/database/CharArrayBuffer;->sizeCopied:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 321
    .local v4, "sndName":Ljava/lang/String;
    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-direct {v1, v4, v0}, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->isEncoding(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "GBK"

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 326
    .end local v4
    .local v0, "sndName":Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .end local v0
    .restart local v4
    :cond_0
    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 327
    .end local v0
    :goto_0
    iget-object v0, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const/4 v0, -0x1

    .line 330
    .local v0, "currentDuration":I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    iget v7, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mDurationIdx:I

    if-le v6, v7, :cond_1

    .line 331
    iget v0, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mDurationIdx:I

    goto :goto_1

    .line 333
    :cond_1
    const-string v6, "duration"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 335
    :goto_1
    if-ltz v0, :cond_3

    .line 336
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    .line 337
    .local v6, "secs":I
    if-nez v6, :cond_2

    .line 338
    iget-object v7, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    move-object/from16 v10, p2

    goto :goto_2

    .line 340
    :cond_2
    iget-object v7, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    int-to-long v8, v6

    move-object/from16 v10, p2

    invoke-static {v10, v8, v9}, Lcom/android/music/LocalMusicPicker;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    .end local v6
    :goto_2
    goto :goto_3

    .line 343
    :cond_3
    move-object/from16 v10, p2

    iget-object v6, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :goto_3
    iget-object v6, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 347
    .local v6, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 355
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 363
    .local v7, "len":I
    iget-object v8, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v8, v8

    if-ge v8, v7, :cond_4

    .line 364
    new-array v8, v7, [C

    iput-object v8, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 366
    :cond_4
    iget-object v8, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v6, v5, v7, v8, v5}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 374
    iget v8, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mIdIdx:I

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 375
    .local v8, "id":J
    iget-object v11, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    iget-object v12, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v12}, Lcom/android/music/LocalMusicPicker;->access$000(Lcom/android/music/LocalMusicPicker;)J

    move-result-wide v12

    cmp-long v12, v8, v12

    const/4 v13, 0x1

    if-nez v12, :cond_5

    move v12, v13

    goto :goto_4

    :cond_5
    move v12, v5

    :goto_4
    invoke-virtual {v11, v12}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 390
    const/4 v11, -0x1

    .line 391
    .local v11, "currentData":I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v12

    iget v14, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mDataIdx:I

    if-le v12, v14, :cond_6

    .line 392
    iget v11, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mDataIdx:I

    goto :goto_5

    .line 394
    :cond_6
    const-string v12, "_data"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 396
    :goto_5
    const/16 v12, 0x8

    if-ltz v11, :cond_b

    .line 397
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 398
    .local v14, "data":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, ".dm"

    .line 399
    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, ".dcf"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    :cond_7
    goto :goto_6

    :cond_8
    move v13, v5

    .line 400
    .local v13, "isDrm":Z
    :goto_6
    if-eqz v13, :cond_9

    .line 401
    iget-object v12, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->drm_icon:Landroid/widget/ImageView;

    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 403
    :cond_9
    iget-object v5, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->drm_icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    :goto_7
    invoke-virtual {v1, v14}, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->getMediaOlnyFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 408
    iget-object v5, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    .end local v13
    .end local v14
    :cond_a
    goto :goto_8

    .line 411
    :cond_b
    iget-object v5, v3, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->drm_icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    :goto_8
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 422
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 426
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v0, p1}, Lcom/android/music/LocalMusicPicker;->access$102(Lcom/android/music/LocalMusicPicker;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 427
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mListHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 428
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v0}, Lcom/android/music/LocalMusicPicker;->access$100(Lcom/android/music/LocalMusicPicker;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v0}, Lcom/android/music/LocalMusicPicker;->access$100(Lcom/android/music/LocalMusicPicker;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mListHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v0}, Lcom/android/music/LocalMusicPicker;->access$200(Lcom/android/music/LocalMusicPicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    iget-object v2, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v2}, Lcom/android/music/LocalMusicPicker;->access$400(Lcom/android/music/LocalMusicPicker;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/music/LocalMusicPicker;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/music/LocalMusicPicker;->access$302(Lcom/android/music/LocalMusicPicker;I)I

    .line 433
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v0}, Lcom/android/music/LocalMusicPicker;->access$300(Lcom/android/music/LocalMusicPicker;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/LocalMusicPicker;->access$202(Lcom/android/music/LocalMusicPicker;Z)Z

    .line 435
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v0}, Lcom/android/music/LocalMusicPicker;->access$500(Lcom/android/music/LocalMusicPicker;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v2}, Lcom/android/music/LocalMusicPicker;->access$000(Lcom/android/music/LocalMusicPicker;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v1}, Lcom/android/music/LocalMusicPicker;->access$300(Lcom/android/music/LocalMusicPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 440
    :cond_2
    if-eqz p1, :cond_5

    .line 442
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mIdIdx:I

    .line 443
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mTitleIdx:I

    .line 446
    const-string v0, "duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mDurationIdx:I

    .line 447
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mDataIdx:I

    .line 452
    iget v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mIndexerSortMode:I

    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v1}, Lcom/android/music/LocalMusicPicker;->access$600(Lcom/android/music/LocalMusicPicker;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-nez v0, :cond_3

    goto :goto_0

    .line 469
    :cond_3
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/android/music/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 453
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v0}, Lcom/android/music/LocalMusicPicker;->access$600(Lcom/android/music/LocalMusicPicker;)I

    move-result v0

    iput v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mIndexerSortMode:I

    .line 454
    iget v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mTitleIdx:I

    .line 463
    .local v0, "idx":I
    new-instance v1, Lcom/android/music/MusicAlphabetIndexer;

    iget-object v2, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    .line 464
    invoke-virtual {v2}, Lcom/android/music/LocalMusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120617

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    .line 468
    .end local v0
    nop

    .line 475
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-virtual {v0}, Lcom/android/music/LocalMusicPicker;->makeListShown()V

    .line 476
    return-void
.end method

.method public getMediaOlnyFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 305
    .local v2, "offset":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 306
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 310
    .end local v1
    .end local v2
    :cond_0
    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .param p1, "section"    # I

    .line 491
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 492
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 494
    const/4 v1, 0x0

    return v1

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v1, p1}, Lcom/android/music/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v1

    return v1
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/android/music/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 508
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    return v0

    .line 264
    :cond_0
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 270
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;-><init>(Lcom/android/music/LocalMusicPicker$TrackListAdapter;)V

    .line 272
    .local v1, "vh":Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;
    const v2, 0x7f0a0234

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 274
    const v2, 0x7f0a0155

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 275
    const v2, 0x7f0a0341

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 276
    const v2, 0x7f0a0304

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/gifmanager/GifPlayerView;

    iput-object v2, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->play_indicator:Lcom/android/settings/gifmanager/GifPlayerView;

    .line 277
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 278
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 279
    const v2, 0x7f0a0153

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/LocalMusicPicker$TrackListAdapter$ViewHolder;->drm_icon:Landroid/widget/ImageView;

    .line 280
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 281
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 487
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v2}, Lcom/android/music/LocalMusicPicker;->access$700(Lcom/android/music/LocalMusicPicker;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/music/LocalMusicPicker;->doQuery(ZLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .line 255
    iput-boolean p1, p0, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->mLoading:Z

    .line 256
    return-void
.end method
