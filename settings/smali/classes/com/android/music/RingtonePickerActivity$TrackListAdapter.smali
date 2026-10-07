.class Lcom/android/music/RingtonePickerActivity$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mDataIdx:I

.field private mDurationIdx:I

.field private mIdIdx:I

.field private mIndexer:Lcom/android/music/MusicAlphabetIndexer;

.field final mListV:Landroid/widget/ListView;

.field private mLoading:Z

.field private mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/music/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/music/RingtonePickerActivity;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/music/RingtonePickerActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listView"    # Landroid/widget/ListView;
    .param p4, "layout"    # I
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .line 862
    iput-object p1, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->this$0:Lcom/android/music/RingtonePickerActivity;

    .line 863
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mLoading:Z

    .line 864
    iput-object p3, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mListV:Landroid/widget/ListView;

    .line 865
    const v0, 0x7f120ee5

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 866
    const v0, 0x7f120ee3

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 867
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

    .line 905
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

    .line 925
    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;

    .line 927
    .local v3, "vh":Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;
    iget v0, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mTitleIdx:I

    iget-object v4, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {v2, v0, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 930
    iget-object v0, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v4, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v4, v4, Landroid/database/CharArrayBuffer;->sizeCopied:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 932
    .local v4, "sndName":Ljava/lang/String;
    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-direct {v1, v4, v0}, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->isEncoding(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    new-instance v0, Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "GBK"

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 937
    .end local v4
    .local v0, "sndName":Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .end local v0
    .restart local v4
    :cond_0
    goto :goto_0

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 938
    .end local v0
    :goto_0
    iget-object v0, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    const/4 v0, -0x1

    .line 941
    .local v0, "currentDuration":I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    iget v7, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mDurationIdx:I

    if-le v6, v7, :cond_1

    .line 942
    iget v0, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mDurationIdx:I

    goto :goto_1

    .line 944
    :cond_1
    const-string v6, "duration"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 946
    :goto_1
    if-ltz v0, :cond_3

    .line 947
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    .line 948
    .local v6, "secs":I
    if-nez v6, :cond_2

    .line 949
    iget-object v7, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    move-object/from16 v10, p2

    goto :goto_2

    .line 951
    :cond_2
    iget-object v7, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    int-to-long v8, v6

    move-object/from16 v10, p2

    invoke-static {v10, v8, v9}, Lcom/android/music/LocalMusicPicker;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    .end local v6
    :goto_2
    goto :goto_3

    .line 954
    :cond_3
    move-object/from16 v10, p2

    iget-object v6, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    :goto_3
    iget-object v6, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 958
    .local v6, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 973
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 974
    .local v7, "len":I
    iget-object v8, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v8, v8

    if-ge v8, v7, :cond_4

    .line 975
    new-array v8, v7, [C

    iput-object v8, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 977
    :cond_4
    iget-object v8, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v6, v5, v7, v8, v5}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 984
    iget v8, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mIdIdx:I

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 986
    .local v8, "id":J
    iget-object v11, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    iget-object v12, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v12}, Lcom/android/music/RingtonePickerActivity;->access$1300(Lcom/android/music/RingtonePickerActivity;)J

    move-result-wide v12

    cmp-long v12, v8, v12

    const/4 v13, 0x1

    if-nez v12, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    iget-object v14, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v14}, Lcom/android/music/RingtonePickerActivity;->access$000(Lcom/android/music/RingtonePickerActivity;)I

    move-result v14

    iget-object v15, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v15}, Lcom/android/music/RingtonePickerActivity;->access$1500(Lcom/android/music/RingtonePickerActivity;)I

    move-result v15

    sub-int/2addr v14, v15

    if-eq v12, v14, :cond_7

    :cond_5
    iget-object v12, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->this$0:Lcom/android/music/RingtonePickerActivity;

    .line 987
    invoke-static {v12}, Lcom/android/music/RingtonePickerActivity;->access$000(Lcom/android/music/RingtonePickerActivity;)I

    move-result v12

    iget-object v14, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v14}, Lcom/android/music/RingtonePickerActivity;->access$500(Lcom/android/music/RingtonePickerActivity;)I

    move-result v14

    if-ne v12, v14, :cond_6

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    iget-object v14, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v14}, Lcom/android/music/RingtonePickerActivity;->access$000(Lcom/android/music/RingtonePickerActivity;)I

    move-result v14

    iget-object v15, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v15}, Lcom/android/music/RingtonePickerActivity;->access$1500(Lcom/android/music/RingtonePickerActivity;)I

    move-result v15

    sub-int/2addr v14, v15

    if-eq v12, v14, :cond_7

    :cond_6
    iget-object v12, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->this$0:Lcom/android/music/RingtonePickerActivity;

    .line 988
    invoke-static {v12}, Lcom/android/music/RingtonePickerActivity;->access$000(Lcom/android/music/RingtonePickerActivity;)I

    move-result v12

    iget-object v14, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v14}, Lcom/android/music/RingtonePickerActivity;->access$400(Lcom/android/music/RingtonePickerActivity;)I

    move-result v14

    if-ne v12, v14, :cond_8

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    iget-object v14, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v14}, Lcom/android/music/RingtonePickerActivity;->access$000(Lcom/android/music/RingtonePickerActivity;)I

    move-result v14

    iget-object v15, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-static {v15}, Lcom/android/music/RingtonePickerActivity;->access$1500(Lcom/android/music/RingtonePickerActivity;)I

    move-result v15

    sub-int/2addr v14, v15

    if-ne v12, v14, :cond_8

    .line 986
    :cond_7
    move v12, v13

    goto :goto_4

    .line 988
    :cond_8
    nop

    .line 986
    move v12, v5

    :goto_4
    invoke-virtual {v11, v12}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1003
    const/4 v11, -0x1

    .line 1004
    .local v11, "currentData":I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v12

    iget v14, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mDataIdx:I

    if-le v12, v14, :cond_9

    .line 1005
    iget v11, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mDataIdx:I

    goto :goto_5

    .line 1007
    :cond_9
    const-string v12, "_data"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1009
    :goto_5
    const/16 v12, 0x8

    if-ltz v11, :cond_e

    .line 1010
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1011
    .local v14, "data":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string v15, ".dm"

    .line 1012
    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    const-string v15, ".dcf"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    :cond_a
    goto :goto_6

    :cond_b
    move v13, v5

    .line 1013
    .local v13, "isDrm":Z
    :goto_6
    if-eqz v13, :cond_c

    .line 1014
    iget-object v12, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->drm_icon:Landroid/widget/ImageView;

    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 1016
    :cond_c
    iget-object v5, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->drm_icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1019
    :goto_7
    invoke-virtual {v1, v14}, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->getMediaOlnyFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1020
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1021
    iget-object v5, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    .end local v13
    .end local v14
    :cond_d
    goto :goto_8

    .line 1024
    :cond_e
    iget-object v5, v3, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->drm_icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1026
    :goto_8
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 1035
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1037
    if-eqz p1, :cond_0

    .line 1039
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mIdIdx:I

    .line 1040
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mTitleIdx:I

    .line 1043
    const-string v0, "duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mDurationIdx:I

    .line 1044
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mDataIdx:I

    .line 1069
    new-instance v0, Lcom/android/music/MusicAlphabetIndexer;

    iget v1, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mTitleIdx:I

    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->this$0:Lcom/android/music/RingtonePickerActivity;

    .line 1070
    invoke-virtual {v2}, Lcom/android/music/RingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120617

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->this$0:Lcom/android/music/RingtonePickerActivity;

    invoke-virtual {v0}, Lcom/android/music/RingtonePickerActivity;->makeListShown()V

    .line 1076
    return-void
.end method

.method public getMediaOlnyFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 909
    const/4 v0, 0x0

    .line 910
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 911
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 912
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 914
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 915
    .local v2, "offset":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 916
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 920
    .end local v1
    .end local v2
    :cond_0
    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .param p1, "section"    # I

    .line 1090
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1091
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1093
    const/4 v1, 0x0

    return v1

    .line 1096
    :cond_0
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v1, p1}, Lcom/android/music/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v1

    return v1
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .line 1100
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/android/music/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1107
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 880
    iget-boolean v0, p0, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 882
    const/4 v0, 0x0

    return v0

    .line 884
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

    .line 890
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 891
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;-><init>(Lcom/android/music/RingtonePickerActivity$TrackListAdapter;)V

    .line 892
    .local v1, "vh":Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;
    const v2, 0x7f0a0234

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 894
    const v2, 0x7f0a0155

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 895
    const v2, 0x7f0a0341

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 896
    const v2, 0x7f0a0304

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/gifmanager/GifPlayerView;

    iput-object v2, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/android/settings/gifmanager/GifPlayerView;

    .line 897
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 898
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 899
    const v2, 0x7f0a0153

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/RingtonePickerActivity$TrackListAdapter$ViewHolder;->drm_icon:Landroid/widget/ImageView;

    .line 900
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 901
    return-object v0
.end method
