.class public final Lcom/android/music/RingtonePickerActivity;
.super Landroid/app/ListActivity;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/RingtonePickerActivity$TrackListAdapter;,
        Lcom/android/music/RingtonePickerActivity$MainMsgHandler;
    }
.end annotation


# static fields
.field private static sPlayingRingtone:Landroid/media/Ringtone;


# instance fields
.field private final MSG_BASE_ID:I

.field private final MSG_PLAY_OVER_DELAY:I

.field private final MSG_PLAY_START_DELAY:I

.field private defaultCtv:Landroid/widget/CheckedTextView;

.field private localRingtoneContainer:Landroid/view/View;

.field private mAdapter:Lcom/android/music/RingtonePickerActivity$TrackListAdapter;

.field private mClickedPos:I

.field private mCurrentRingtone:Landroid/media/Ringtone;

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mFirstInClickedPos:I

.field private mFirstInSelectedId:I

.field private mFromPackageName:Ljava/lang/String;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mIsHasClick:Z

.field private mListHeaderView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mOkayButton:Landroid/view/View;

.field private mPlayingId:J

.field private mProgressContainer:Landroid/view/View;

.field private mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRingtoneManager:Lcom/android/music/MusicRingtoneManager;

.field private mRingtoneType:I

.field private mSampleRingtonePos:I

.field private mSelectedId:J

.field private mSelectedUri:Landroid/net/Uri;

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mSubId:I

.field private mUriForDefaultItem:Landroid/net/Uri;

.field private mainMsgHandler:Lcom/android/music/RingtonePickerActivity$MainMsgHandler;

.field private final reqCallBackID:I

.field private silentCtv:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mSilentPos:I

    .line 127
    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 130
    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    .line 133
    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 134
    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mFirstInClickedPos:I

    .line 135
    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mFirstInSelectedId:I

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/RingtonePickerActivity;->mIsHasClick:Z

    .line 174
    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mSubId:I

    .line 176
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedId:J

    .line 182
    iput-wide v0, p0, Lcom/android/music/RingtonePickerActivity;->mPlayingId:J

    .line 186
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->reqCallBackID:I

    .line 188
    const/16 v0, 0x2000

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->MSG_BASE_ID:I

    .line 189
    const/16 v0, 0x2001

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->MSG_PLAY_OVER_DELAY:I

    .line 190
    const/16 v0, 0x2002

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->MSG_PLAY_START_DELAY:I

    .line 253
    new-instance v0, Lcom/android/music/RingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/RingtonePickerActivity$1;-><init>(Lcom/android/music/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/RingtonePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;

    .line 80
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/music/RingtonePickerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;
    .param p1, "x1"    # I

    .line 80
    iput p1, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/music/RingtonePickerActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/music/RingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/music/RingtonePickerActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;

    .line 80
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/music/RingtonePickerActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;
    .param p1, "x1"    # I

    .line 80
    invoke-direct {p0, p1}, Lcom/android/music/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/android/music/RingtonePickerActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;
    .param p1, "x1"    # J

    .line 80
    iput-wide p1, p0, Lcom/android/music/RingtonePickerActivity;->mPlayingId:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/music/RingtonePickerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;

    .line 80
    iget-wide v0, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedId:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/music/RingtonePickerActivity;)Lcom/android/music/RingtonePickerActivity$TrackListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;

    .line 80
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mAdapter:Lcom/android/music/RingtonePickerActivity$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/music/RingtonePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;

    .line 80
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mStaticItemCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/music/RingtonePickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;

    .line 80
    invoke-direct {p0}, Lcom/android/music/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/music/RingtonePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;

    .line 80
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mSampleRingtonePos:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/music/RingtonePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;

    .line 80
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mSilentPos:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/music/RingtonePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;

    .line 80
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtonePos:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/music/RingtonePickerActivity;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;

    .line 80
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/music/RingtonePickerActivity;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;
    .param p1, "x1"    # Landroid/media/Ringtone;

    .line 80
    iput-object p1, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/music/RingtonePickerActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;

    .line 80
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/music/RingtonePickerActivity;)Lcom/android/music/MusicRingtoneManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;

    .line 80
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneManager:Lcom/android/music/MusicRingtoneManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/music/RingtonePickerActivity;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0
    .param p0, "x0"    # Lcom/android/music/RingtonePickerActivity;
    .param p1, "x1"    # Landroid/media/Ringtone;

    .line 80
    iput-object p1, p0, Lcom/android/music/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    return-object p1
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;Z)I
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "checked"    # Z

    .line 564
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneType:I

    const v1, 0x7f120bf3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 565
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mSubId:I

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 566
    invoke-direct {p0, p1, v1, p2}, Lcom/android/music/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;IZ)Landroid/widget/CheckedTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/RingtonePickerActivity;->defaultCtv:Landroid/widget/CheckedTextView;

    goto :goto_0

    .line 568
    :cond_0
    const v0, 0x7f120993

    invoke-direct {p0, p1, v0, p2}, Lcom/android/music/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;IZ)Landroid/widget/CheckedTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/RingtonePickerActivity;->defaultCtv:Landroid/widget/CheckedTextView;

    .line 570
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 571
    :cond_1
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 572
    const v0, 0x7f1200d4

    invoke-direct {p0, p1, v0, p2}, Lcom/android/music/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;IZ)Landroid/widget/CheckedTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/RingtonePickerActivity;->defaultCtv:Landroid/widget/CheckedTextView;

    .line 573
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 576
    :cond_2
    invoke-direct {p0, p1, v1, p2}, Lcom/android/music/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;IZ)Landroid/widget/CheckedTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/RingtonePickerActivity;->defaultCtv:Landroid/widget/CheckedTextView;

    .line 577
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private addSilentItem(Landroid/widget/ListView;Z)I
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "checked"    # Z

    .line 581
    const v0, 0x104059f

    invoke-direct {p0, p1, v0, p2}, Lcom/android/music/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;IZ)Landroid/widget/CheckedTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/RingtonePickerActivity;->silentCtv:Landroid/widget/CheckedTextView;

    .line 582
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;IZ)Landroid/widget/CheckedTextView;
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "textResId"    # I
    .param p3, "checked"    # Z

    .line 544
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 546
    .local v0, "textView":Landroid/widget/CheckedTextView;
    invoke-virtual {v0, p2}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 547
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070193

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 552
    .local v1, "offset":I
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/CheckedTextView;->setPaddingRelative(IIII)V

    .line 553
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 554
    const v2, 0x7f0802ac

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 555
    invoke-virtual {v0, p3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 556
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 557
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 558
    iget v2, p0, Lcom/android/music/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/music/RingtonePickerActivity;->mStaticItemCount:I

    .line 560
    return-object v0
.end method

.method private getDurationNotificationSoundToDefaultDuration(Landroid/content/Context;)I
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 1487
    const/4 v0, 0x0

    .line 1488
    .local v0, "COLUMN_ID":I
    const/4 v1, 0x1

    .line 1489
    .local v1, "COLUMN_DURATION":I
    const/4 v2, 0x0

    .line 1491
    .local v2, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "ro.config.notification_sound"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1493
    .local v4, "defaultRingtoneFilename":Ljava/lang/String;
    nop

    .line 1494
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    const-string v8, "duration"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "_display_name=?"

    const/4 v12, 0x1

    new-array v9, v12, [Ljava/lang/String;

    aput-object v4, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1496
    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    move-object v2, v5

    .line 1507
    if-eqz v2, :cond_1

    .line 1508
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1509
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1510
    .local v5, "rowId":I
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v6

    .line 1511
    .local v3, "duration":I
    nop

    .line 1517
    if-eqz v2, :cond_0

    .line 1518
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1511
    :cond_0
    return v3

    .line 1517
    .end local v3
    .end local v4
    .end local v5
    :cond_1
    if-eqz v2, :cond_2

    .line 1518
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1517
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1514
    :catch_0
    move-exception v4

    .line 1515
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1517
    .end local v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1521
    :cond_2
    :goto_1
    return v3

    .line 1517
    :goto_2
    if-eqz v2, :cond_3

    .line 1518
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method private getDurationRingtoneToDefaultDuration(Landroid/content/Context;)I
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 1449
    const/4 v0, 0x0

    .line 1450
    .local v0, "COLUMN_ID":I
    const/4 v1, 0x1

    .line 1451
    .local v1, "COLUMN_DURATION":I
    const/4 v2, 0x0

    .line 1453
    .local v2, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "ro.config.ringtone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1455
    .local v4, "defaultRingtoneFilename":Ljava/lang/String;
    nop

    .line 1456
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    const-string v8, "duration"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "_display_name=?"

    const/4 v12, 0x1

    new-array v9, v12, [Ljava/lang/String;

    aput-object v4, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1458
    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    move-object v2, v5

    .line 1469
    if-eqz v2, :cond_1

    .line 1470
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1471
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1472
    .local v5, "rowId":I
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v6

    .line 1473
    .local v3, "duration":I
    nop

    .line 1479
    if-eqz v2, :cond_0

    .line 1480
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1473
    :cond_0
    return v3

    .line 1479
    .end local v3
    .end local v4
    .end local v5
    :cond_1
    if-eqz v2, :cond_2

    .line 1480
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1479
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1476
    :catch_0
    move-exception v4

    .line 1477
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1479
    .end local v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1483
    :cond_2
    :goto_1
    return v3

    .line 1479
    :goto_2
    if-eqz v2, :cond_3

    .line 1480
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method private getListPosition(I)I
    .locals 1
    .param p1, "ringtoneManagerPos"    # I

    .line 821
    if-gez p1, :cond_0

    return p1

    .line 823
    :cond_0
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr v0, p1

    return v0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .param p1, "listPos"    # I

    .line 815
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private getUriNotificationSoundToDefault(Landroid/content/Context;)Landroid/net/Uri;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 1398
    const/4 v0, 0x0

    .line 1399
    .local v0, "COLUMN_ID":I
    const/4 v1, 0x1

    .line 1400
    .local v1, "COLUMN_TITLE":I
    const/4 v2, 0x0

    move-object v3, v2

    .line 1402
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "ro.config.notification_sound"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1404
    .local v4, "defaultRingtoneFilename":Ljava/lang/String;
    nop

    .line 1405
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    const-string v8, "title"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "_display_name=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v4, v9, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1407
    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    move-object v3, v5

    .line 1418
    if-eqz v3, :cond_1

    .line 1419
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1420
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1421
    .local v5, "rowId":I
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v7, v5

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v6

    .line 1423
    .local v2, "defaultRingtoneUri":Landroid/net/Uri;
    nop

    .line 1429
    if-eqz v3, :cond_0

    .line 1430
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1423
    :cond_0
    return-object v2

    .line 1429
    .end local v2
    .end local v4
    .end local v5
    :cond_1
    if-eqz v3, :cond_2

    .line 1430
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1429
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1426
    :catch_0
    move-exception v4

    .line 1427
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1429
    .end local v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1433
    :cond_2
    :goto_1
    return-object v2

    .line 1429
    :goto_2
    if-eqz v3, :cond_3

    .line 1430
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getUriRingtoneToDefault(Landroid/content/Context;)Landroid/net/Uri;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 1357
    const/4 v0, 0x0

    .line 1358
    .local v0, "COLUMN_ID":I
    const/4 v1, 0x1

    .line 1359
    .local v1, "COLUMN_TITLE":I
    const/4 v2, 0x0

    move-object v3, v2

    .line 1361
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "ro.config.ringtone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1364
    .local v4, "defaultRingtoneFilename":Ljava/lang/String;
    nop

    .line 1365
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    const-string v8, "title"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "_display_name=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v4, v9, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1368
    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    move-object v3, v5

    .line 1379
    if-eqz v3, :cond_1

    .line 1380
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1381
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1382
    .local v5, "rowId":I
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v7, v5

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v6

    .line 1384
    .local v2, "defaultRingtoneUri":Landroid/net/Uri;
    nop

    .line 1390
    if-eqz v3, :cond_0

    .line 1391
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1384
    :cond_0
    return-object v2

    .line 1390
    .end local v2
    .end local v4
    .end local v5
    :cond_1
    if-eqz v3, :cond_2

    .line 1391
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1390
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1387
    :catch_0
    move-exception v4

    .line 1388
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1390
    .end local v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1394
    :cond_2
    :goto_1
    return-object v2

    .line 1390
    :goto_2
    if-eqz v3, :cond_3

    .line 1391
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private playRingtone(II)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "delayMs"    # I

    .line 670
    const/16 v0, 0x2002

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/RingtonePickerActivity;->removeMsgQueue(ILjava/lang/Object;)I

    .line 671
    iput p1, p0, Lcom/android/music/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 672
    const/16 v3, 0x2002

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/music/RingtonePickerActivity;->sendMsgQueueDelayed(IIILjava/lang/Object;I)I

    .line 673
    return-void
.end method

.method private saveAnyPlayingRingtone()V
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    sput-object v0, Lcom/android/music/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    goto :goto_0

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    sput-object v0, Lcom/android/music/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    .line 791
    :cond_1
    :goto_0
    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 5

    .line 794
    sget-object v0, Lcom/android/music/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/music/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    sget-object v0, Lcom/android/music/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 797
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    .line 799
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 800
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 803
    :cond_1
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneManager:Lcom/android/music/MusicRingtoneManager;

    if-eqz v1, :cond_2

    .line 804
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneManager:Lcom/android/music/MusicRingtoneManager;

    invoke-virtual {v1}, Lcom/android/music/MusicRingtoneManager;->stopPreviousRingtone()V

    .line 806
    :cond_2
    iget-wide v1, p0, Lcom/android/music/RingtonePickerActivity;->mPlayingId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 807
    iput-wide v3, p0, Lcom/android/music/RingtonePickerActivity;->mPlayingId:J

    .line 808
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mAdapter:Lcom/android/music/RingtonePickerActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 810
    :cond_3
    const/16 v1, 0x2002

    invoke-virtual {p0, v1, v0}, Lcom/android/music/RingtonePickerActivity;->removeMsgQueue(ILjava/lang/Object;)I

    .line 811
    const/16 v1, 0x2001

    invoke-virtual {p0, v1, v0}, Lcom/android/music/RingtonePickerActivity;->removeMsgQueue(ILjava/lang/Object;)I

    .line 812
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1122
    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    .line 1123
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1125
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 1127
    :cond_0
    return-void
.end method

.method public getRingtoneType()I
    .locals 1

    .line 1319
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneType:I

    return v0
.end method

.method public getTrulyDurationRintoneDefault(Landroid/net/Uri;)I
    .locals 3
    .param p1, "defaultUri"    # Landroid/net/Uri;

    .line 1437
    const/4 v0, 0x0

    .line 1438
    .local v0, "searchResultDuration":I
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mFromPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.settings"

    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mFromPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1439
    iget v1, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1440
    invoke-direct {p0, p0}, Lcom/android/music/RingtonePickerActivity;->getDurationNotificationSoundToDefaultDuration(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 1441
    :cond_0
    iget v1, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1442
    invoke-direct {p0, p0}, Lcom/android/music/RingtonePickerActivity;->getDurationRingtoneToDefaultDuration(Landroid/content/Context;)I

    move-result v0

    .line 1445
    :cond_1
    :goto_0
    if-gtz v0, :cond_2

    const/16 v1, 0xbb8

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method public getTrulyUriRintoneDefault(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "defaultUri"    # Landroid/net/Uri;

    .line 1345
    const/4 v0, 0x0

    .line 1346
    .local v0, "searchResultUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mFromPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.settings"

    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mFromPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1347
    iget v1, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1348
    invoke-direct {p0, p0}, Lcom/android/music/RingtonePickerActivity;->getUriNotificationSoundToDefault(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1349
    :cond_0
    iget v1, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1350
    invoke-direct {p0, p0}, Lcom/android/music/RingtonePickerActivity;->getUriRingtoneToDefault(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 1353
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    move-object v1, p1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public isRingtoneDefault()Z
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 475
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 476
    return v1

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getRingtoneType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 479
    invoke-direct {p0, p0}, Lcom/android/music/RingtonePickerActivity;->getUriRingtoneToDefault(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 480
    .local v0, "gUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    return v1

    .line 483
    .end local v0
    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getRingtoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 484
    invoke-direct {p0, p0}, Lcom/android/music/RingtonePickerActivity;->getUriNotificationSoundToDefault(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 485
    .restart local v0
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 486
    return v1

    .line 490
    .end local v0
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectedItem()Z
    .locals 4

    .line 1337
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    iget v1, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtonePos:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    if-ne v0, v2, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    iget v1, p0, Lcom/android/music/RingtonePickerActivity;->mSilentPos:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    if-ne v0, v2, :cond_2

    :cond_1
    iget-wide v0, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 1339
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1341
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public makeListShown()V
    .locals 2

    .line 1112
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mProgressContainer:Landroid/view/View;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1114
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mProgressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x10a0000

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1117
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1118
    return-void
.end method

.method public nowChooseDefaultItem(I)V
    .locals 4
    .param p1, "position"    # I

    .line 1529
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtonePos:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    .line 1530
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->defaultCtv:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->defaultCtv:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->silentCtv:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_1

    .line 1534
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->silentCtv:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1536
    :cond_1
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1537
    :cond_2
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mSilentPos:I

    if-ne p1, v0, :cond_5

    .line 1538
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->defaultCtv:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_3

    .line 1539
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->defaultCtv:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1541
    :cond_3
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->silentCtv:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_4

    .line 1542
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->silentCtv:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1544
    :cond_4
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1546
    :cond_5
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->defaultCtv:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_6

    .line 1547
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->defaultCtv:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1549
    :cond_6
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->silentCtv:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_7

    .line 1550
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->silentCtv:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1552
    :cond_7
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1554
    :goto_0
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mOkayButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->isSelectedItem()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1555
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1221
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1224
    const/16 v0, 0x3e9

    if-ne v0, p1, :cond_1

    .line 1225
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1226
    invoke-virtual {p0, v0, p3}, Lcom/android/music/RingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 1227
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->finish()V

    goto :goto_0

    .line 1229
    :cond_0
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mFirstInClickedPos:I

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    .line 1230
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mFirstInSelectedId:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedId:J

    .line 1231
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p0, v0}, Lcom/android/music/RingtonePickerActivity;->nowChooseDefaultItem(I)V

    .line 1232
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mAdapter:Lcom/android/music/RingtonePickerActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 1235
    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 1131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00c3

    if-eq v0, v1, :cond_14

    const v1, 0x7f0a0249

    if-eq v0, v1, :cond_12

    const v1, 0x7f0a02be

    if-eq v0, v1, :cond_0

    goto/16 :goto_8

    .line 1135
    :cond_0
    iget-boolean v0, p0, Lcom/android/music/RingtonePickerActivity;->mIsHasClick:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 1138
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/RingtonePickerActivity;->mIsHasClick:Z

    .line 1141
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneManager:Lcom/android/music/MusicRingtoneManager;

    invoke-virtual {v1}, Lcom/android/music/MusicRingtoneManager;->stopPreviousRingtone()V

    .line 1144
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 1145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/RingtonePickerActivity;->setResult(I)V

    .line 1146
    const v1, 0x7f120504

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1147
    return-void

    .line 1150
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1152
    .local v1, "resultIntent":Landroid/content/Intent;
    iget v2, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    iget v3, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtonePos:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    .line 1154
    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    goto :goto_0

    .line 1155
    :cond_3
    iget v2, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    iget v3, p0, Lcom/android/music/RingtonePickerActivity;->mSilentPos:I

    if-ne v2, v3, :cond_4

    .line 1157
    iput-object v4, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    goto :goto_0

    .line 1159
    :cond_4
    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneManager:Lcom/android/music/MusicRingtoneManager;

    iget v3, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v3}, Lcom/android/music/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/music/MusicRingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    .line 1170
    :goto_0
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->isSelectedItem()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1171
    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mFromPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "com.android.settings"

    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mFromPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1172
    iget v2, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 1173
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mSubId:I

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_8

    .line 1174
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    iget v2, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v0, v2, :cond_6

    .line 1175
    :cond_5
    invoke-direct {p0, p0}, Lcom/android/music/RingtonePickerActivity;->getUriNotificationSoundToDefault(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    .line 1177
    :cond_6
    const-string v0, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "=====divhee=======mSelectedUri===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sms_ringtone_sound"

    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .line 1180
    :cond_8
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "notification_sound"

    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .line 1182
    :cond_a
    iget v2, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneType:I

    if-ne v2, v0, :cond_e

    .line 1183
    iget v2, p0, Lcom/android/music/RingtonePickerActivity;->mSubId:I

    if-nez v2, :cond_c

    .line 1184
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ringtone"

    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    if-nez v3, :cond_b

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .line 1185
    :cond_c
    iget v2, p0, Lcom/android/music/RingtonePickerActivity;->mSubId:I

    if-ne v2, v0, :cond_10

    .line 1186
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ringtone_2"

    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    if-nez v3, :cond_d

    goto :goto_4

    :cond_d
    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .line 1188
    :cond_e
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_10

    .line 1189
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "alarm_alert"

    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    if-nez v3, :cond_f

    goto :goto_5

    :cond_f
    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1192
    :cond_10
    :goto_6
    const/4 v0, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    iget-object v4, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/music/RingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 1193
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->finish()V

    goto :goto_8

    .line 1136
    .end local v1
    :cond_11
    :goto_7
    return-void

    .line 1201
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1203
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    const-string v1, "application/ogg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1206
    const-string v1, "application/x-ogg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1207
    const-string v1, "SubId"

    iget v2, p0, Lcom/android/music/RingtonePickerActivity;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1208
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1209
    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getRingtoneType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1210
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mFromPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1211
    const-string v1, "FROMPACKAGENAME"

    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mFromPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1213
    :cond_13
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.music.LocalMusicPicker"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1214
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/android/music/RingtonePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0
    goto :goto_8

    .line 1198
    :cond_14
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->finish()V

    .line 1199
    nop

    .line 1217
    :cond_15
    :goto_8
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 271
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 273
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 274
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;-><init>(Lcom/android/music/RingtonePickerActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mainMsgHandler:Lcom/android/music/RingtonePickerActivity$MainMsgHandler;

    .line 276
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 282
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/music/RingtonePickerActivity;->mHasDefaultItem:Z

    .line 283
    const-string v2, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 284
    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 285
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 289
    :cond_0
    const/4 v2, -0x1

    if-eqz p1, :cond_1

    .line 290
    const-string v4, "clicked_pos"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    .line 293
    :cond_1
    const-string v4, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/music/RingtonePickerActivity;->mHasSilentItem:Z

    .line 296
    new-instance v4, Lcom/android/music/MusicRingtoneManager;

    invoke-direct {v4, p0}, Lcom/android/music/MusicRingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneManager:Lcom/android/music/MusicRingtoneManager;

    .line 299
    const-string v4, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneType:I

    .line 300
    iget v4, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneType:I

    if-eq v4, v2, :cond_2

    .line 301
    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneManager:Lcom/android/music/MusicRingtoneManager;

    iget v4, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneType:I

    invoke-virtual {v2, v4}, Lcom/android/music/MusicRingtoneManager;->setType(I)V

    .line 304
    :cond_2
    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneManager:Lcom/android/music/MusicRingtoneManager;

    invoke-virtual {v2}, Lcom/android/music/MusicRingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 307
    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneManager:Lcom/android/music/MusicRingtoneManager;

    invoke-virtual {v2}, Lcom/android/music/MusicRingtoneManager;->inferStreamType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/music/RingtonePickerActivity;->setVolumeControlStream(I)V

    .line 310
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    .line 311
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 335
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v4, "SubId"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 336
    const-string v4, "SubId"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/music/RingtonePickerActivity;->mSubId:I

    goto :goto_0

    .line 338
    :cond_3
    iput v2, p0, Lcom/android/music/RingtonePickerActivity;->mSubId:I

    .line 340
    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    const-string v5, "FROMPACKAGENAME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 341
    const-string v5, "FROMPACKAGENAME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/RingtonePickerActivity;->mFromPackageName:Ljava/lang/String;

    goto :goto_1

    .line 343
    :cond_4
    iput-object v4, p0, Lcom/android/music/RingtonePickerActivity;->mFromPackageName:Ljava/lang/String;

    .line 345
    :goto_1
    iget-object v5, p0, Lcom/android/music/RingtonePickerActivity;->mFromPackageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.android.settings"

    iget-object v6, p0, Lcom/android/music/RingtonePickerActivity;->mFromPackageName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 349
    :cond_5
    iput-boolean v2, p0, Lcom/android/music/RingtonePickerActivity;->mHasDefaultItem:Z

    .line 350
    iget-object v5, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content://settings/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 351
    iput-object v4, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 354
    :cond_6
    :goto_2
    iget v5, p0, Lcom/android/music/RingtonePickerActivity;->mSubId:I

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_b

    .line 355
    iget-object v5, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v5, :cond_7

    .line 356
    invoke-direct {p0, p0}, Lcom/android/music/RingtonePickerActivity;->getUriNotificationSoundToDefault(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 358
    :cond_7
    iget-object v5, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v5, :cond_8

    move v5, v3

    goto :goto_3

    :cond_8
    move v5, v2

    :goto_3
    iput-boolean v5, p0, Lcom/android/music/RingtonePickerActivity;->mHasDefaultItem:Z

    .line 359
    iget-object v5, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v5, :cond_9

    move v5, v3

    goto :goto_4

    :cond_9
    move v5, v2

    :goto_4
    iput-boolean v5, p0, Lcom/android/music/RingtonePickerActivity;->mHasSilentItem:Z

    .line 360
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sms_ringtone_sound"

    iget-object v7, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v7, :cond_a

    move-object v7, v4

    goto :goto_5

    :cond_a
    iget-object v7, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 363
    :cond_b
    const v5, 0x7f0d00f0

    invoke-virtual {p0, v5}, Lcom/android/music/RingtonePickerActivity;->setContentView(I)V

    .line 365
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    .line 366
    .local v5, "actionBar":Landroid/app/ActionBar;
    if-eqz v5, :cond_c

    .line 367
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 368
    .local v6, "lcdwidth":I
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070190

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 369
    .local v7, "leftmarginSmall":I
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07018f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 371
    .local v8, "leftmarginBigger":I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0d0029

    const v11, 0x7f0a0016

    invoke-virtual {p0, v11}, Lcom/android/music/RingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 372
    .local v9, "actionbarLayout":Landroid/view/View;
    const v10, 0x7f0a024d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 373
    const v10, 0x7f0a024e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 374
    const v10, 0x7f0a0250

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 375
    .local v10, "child":Landroid/view/View;
    move-object v11, v10

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f1207a7

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 376
    invoke-virtual {v10, v7, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 377
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 378
    .local v11, "vglp":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v12, v6

    const v13, 0x3eb33333    # 0.35f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 379
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    const v12, 0x7f0a024f

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 381
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 382
    int-to-float v12, v6

    const v13, 0x3f266666    # 0.65f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 383
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 387
    const/16 v12, 0x10

    invoke-virtual {v5, v12}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 389
    invoke-virtual {v5, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 390
    invoke-virtual {v5, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 393
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    :cond_c
    const v6, 0x7f0a02be

    invoke-virtual {p0, v6}, Lcom/android/music/RingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/music/RingtonePickerActivity;->mOkayButton:Landroid/view/View;

    .line 394
    iget-object v6, p0, Lcom/android/music/RingtonePickerActivity;->mOkayButton:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 395
    iget-object v6, p0, Lcom/android/music/RingtonePickerActivity;->mOkayButton:Landroid/view/View;

    check-cast v6, Landroid/widget/Button;

    const v7, 0x7f120bd9

    invoke-virtual {p0, v7}, Lcom/android/music/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v6, p0, Lcom/android/music/RingtonePickerActivity;->mOkayButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    const v6, 0x7f0a0326

    invoke-virtual {p0, v6}, Lcom/android/music/RingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/music/RingtonePickerActivity;->mProgressContainer:Landroid/view/View;

    .line 400
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    .line 401
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d00f1

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/music/RingtonePickerActivity;->mListHeaderView:Landroid/view/View;

    .line 402
    iget-object v6, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/music/RingtonePickerActivity;->mListHeaderView:Landroid/view/View;

    invoke-virtual {v6, v7, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 403
    iget v6, p0, Lcom/android/music/RingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/android/music/RingtonePickerActivity;->mStaticItemCount:I

    .line 405
    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 407
    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Lcom/android/music/RingtonePickerActivity;->onPrepareListView(Landroid/widget/ListView;)V

    .line 409
    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mListHeaderView:Landroid/view/View;

    const v6, 0x7f0a0249

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/RingtonePickerActivity;->localRingtoneContainer:Landroid/view/View;

    .line 410
    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->localRingtoneContainer:Landroid/view/View;

    const v6, 0x1020016

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 411
    .local v3, "title":Landroid/widget/TextView;
    const v6, 0x7f1207a6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 413
    iget-object v6, p0, Lcom/android/music/RingtonePickerActivity;->localRingtoneContainer:Landroid/view/View;

    const v7, 0x1020010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 414
    .local v6, "summary":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->isSelectedItem()Z

    move-result v7

    if-nez v7, :cond_10

    if-eqz v6, :cond_10

    .line 416
    nop

    .line 418
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    const-string v9, "title"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v4, v7

    .line 420
    if-eqz v4, :cond_d

    .line 421
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 422
    const-string v7, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "=======divhee====getString=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    if-eqz v4, :cond_f

    goto :goto_6

    :catchall_0
    move-exception v7

    if-eqz v4, :cond_e

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v7

    .line 426
    :catch_0
    move-exception v7

    .line 429
    if-eqz v4, :cond_f

    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 431
    .end local v4
    :catch_1
    move-exception v4

    .line 432
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4
    goto :goto_8

    .line 433
    :cond_f
    :goto_7
    nop

    .line 437
    :cond_10
    :goto_8
    iget-object v4, p0, Lcom/android/music/RingtonePickerActivity;->localRingtoneContainer:Landroid/view/View;

    const v7, 0x1020006

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v4, p0, Lcom/android/music/RingtonePickerActivity;->localRingtoneContainer:Landroid/view/View;

    const v8, 0x1020018

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object v4, p0, Lcom/android/music/RingtonePickerActivity;->localRingtoneContainer:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    new-instance v4, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;

    iget-object v10, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    const v11, 0x7f0d00ee

    new-array v12, v2, [Ljava/lang/String;

    new-array v13, v2, [I

    move-object v7, v4

    move-object v8, p0

    move-object v9, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;-><init>(Lcom/android/music/RingtonePickerActivity;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V

    iput-object v4, p0, Lcom/android/music/RingtonePickerActivity;->mAdapter:Lcom/android/music/RingtonePickerActivity$TrackListAdapter;

    .line 453
    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mAdapter:Lcom/android/music/RingtonePickerActivity$TrackListAdapter;

    invoke-virtual {p0, v2}, Lcom/android/music/RingtonePickerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 455
    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mAdapter:Lcom/android/music/RingtonePickerActivity$TrackListAdapter;

    iget-object v4, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v4}, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 465
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 769
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/RingtonePickerActivity;->mIsHasClick:Z

    .line 771
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 775
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 643
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/music/RingtonePickerActivity;->playRingtone(II)V

    .line 644
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 1240
    const-string v0, "RingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====divhee===onListItemClick=rongtone===position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    if-nez p3, :cond_0

    goto :goto_0

    .line 1243
    :cond_0
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtonePos:I

    const-wide/16 v1, -0x1

    if-ne p3, v0, :cond_1

    .line 1244
    iput-wide v1, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedId:J

    .line 1245
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    .line 1247
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/music/RingtonePickerActivity;->getTrulyDurationRintoneDefault(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/android/music/RingtonePickerActivity;->playRingtone(II)V

    .line 1248
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mAdapter:Lcom/android/music/RingtonePickerActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 1250
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p0, v0}, Lcom/android/music/RingtonePickerActivity;->nowChooseDefaultItem(I)V

    goto :goto_0

    .line 1251
    :cond_1
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mSilentPos:I

    if-ne p3, v0, :cond_2

    .line 1252
    iput-wide v1, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedId:J

    .line 1253
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    .line 1254
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneManager:Lcom/android/music/MusicRingtoneManager;

    invoke-virtual {v0}, Lcom/android/music/MusicRingtoneManager;->stopPreviousRingtone()V

    .line 1255
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mAdapter:Lcom/android/music/RingtonePickerActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 1257
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p0, v0}, Lcom/android/music/RingtonePickerActivity;->nowChooseDefaultItem(I)V

    goto :goto_0

    .line 1259
    :cond_2
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/music/RingtonePickerActivity;->mStaticItemCount:I

    sub-int v1, p3, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1265
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, p3}, Lcom/android/music/RingtonePickerActivity;->setSelected(Landroid/database/Cursor;I)V

    .line 1266
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mAdapter:Lcom/android/music/RingtonePickerActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/RingtonePickerActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 1268
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p0, v0}, Lcom/android/music/RingtonePickerActivity;->nowChooseDefaultItem(I)V

    .line 1270
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .line 647
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 779
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 780
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    invoke-direct {p0}, Lcom/android/music/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 783
    :cond_0
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 7
    .param p1, "listView"    # Landroid/widget/ListView;

    .line 494
    iget-boolean v0, p0, Lcom/android/music/RingtonePickerActivity;->mHasDefaultItem:Z

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v0, :cond_1

    .line 495
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->isRingtoneDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/music/RingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;Z)I

    move-result v0

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 496
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mFromPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.settings"

    iget-object v6, p0, Lcom/android/music/RingtonePickerActivity;->mFromPackageName:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->isRingtoneDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 498
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    .line 499
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    .line 500
    iput-wide v1, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedId:J

    .line 504
    :cond_1
    iget-boolean v0, p0, Lcom/android/music/RingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v0, :cond_3

    .line 505
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/android/music/RingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;Z)I

    move-result v0

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mSilentPos:I

    .line 508
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v0, :cond_3

    .line 509
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    .line 510
    iput-wide v1, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedId:J

    .line 513
    :cond_3
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    if-ne v0, v5, :cond_4

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mRingtoneManager:Lcom/android/music/MusicRingtoneManager;

    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/music/MusicRingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/music/RingtonePickerActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    .line 517
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 516
    :catch_0
    move-exception v0

    .line 518
    :goto_2
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    if-lez v0, :cond_4

    .line 519
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    iget v2, p0, Lcom/android/music/RingtonePickerActivity;->mStaticItemCount:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 520
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 521
    .local v0, "newId":J
    iput-wide v0, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedId:J

    .line 522
    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 526
    .end local v0
    :cond_4
    iget v0, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mFirstInClickedPos:I

    .line 527
    iget-wide v0, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedId:J

    long-to-int v0, v0

    iput v0, p0, Lcom/android/music/RingtonePickerActivity;->mFirstInSelectedId:I

    .line 532
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mOkayButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->isSelectedItem()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 533
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 469
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 470
    const-string v0, "clicked_pos"

    iget v1, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 750
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 751
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/android/music/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    goto :goto_0

    .line 754
    :cond_0
    invoke-direct {p0}, Lcom/android/music/RingtonePickerActivity;->saveAnyPlayingRingtone()V

    .line 756
    :goto_0
    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 757
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 761
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 762
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 765
    :cond_2
    return-void
.end method

.method public removeMsgQueue(ILjava/lang/Object;)I
    .locals 1
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 663
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mainMsgHandler:Lcom/android/music/RingtonePickerActivity$MainMsgHandler;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mainMsgHandler:Lcom/android/music/RingtonePickerActivity$MainMsgHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->removeMessages(ILjava/lang/Object;)V

    .line 666
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public sendMsgQueueDelayed(IIILjava/lang/Object;I)I
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "delay"    # I

    .line 651
    iget-object v0, p0, Lcom/android/music/RingtonePickerActivity;->mainMsgHandler:Lcom/android/music/RingtonePickerActivity$MainMsgHandler;

    if-eqz v0, :cond_0

    .line 652
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 653
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 654
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 655
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 656
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 657
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mainMsgHandler:Lcom/android/music/RingtonePickerActivity$MainMsgHandler;

    int-to-long v2, p5

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/music/RingtonePickerActivity$MainMsgHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 659
    .end local v0
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected setSelected(Landroid/database/Cursor;I)V
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "position"    # I

    .line 1273
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1274
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1275
    .local v1, "newId":J
    iget-object v3, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    const-string v5, "duration"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1277
    .local v3, "newDuration":J
    iget-object v5, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    const-string v7, "_data"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1292
    .local v5, "data":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedUri:Landroid/net/Uri;

    .line 1294
    iput-wide v1, p0, Lcom/android/music/RingtonePickerActivity;->mSelectedId:J

    .line 1295
    iget-object v6, p0, Lcom/android/music/RingtonePickerActivity;->mOkayButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/music/RingtonePickerActivity;->isSelectedItem()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1297
    iput p2, p0, Lcom/android/music/RingtonePickerActivity;->mClickedPos:I

    .line 1300
    long-to-int v6, v3

    invoke-direct {p0, p2, v6}, Lcom/android/music/RingtonePickerActivity;->playRingtone(II)V

    .line 1301
    return-void
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .line 746
    return-void
.end method
