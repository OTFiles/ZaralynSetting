.class public Lcom/android/music/LocalMusicPicker;
.super Landroid/app/ListActivity;
.source "LocalMusicPicker.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/LocalMusicPicker$QueryHandler;,
        Lcom/android/music/LocalMusicPicker$TrackListAdapter;
    }
.end annotation


# static fields
.field private static final CURSOR_COLS:[Ljava/lang/String;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field private bReceiverScanListener:Z

.field private mAdapter:Lcom/android/music/LocalMusicPicker$TrackListAdapter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBaseUri:Landroid/net/Uri;

.field private mCancelButton:Landroid/view/View;

.field private mCursor:Landroid/database/Cursor;

.field private mFirstNeedUpdate:Z

.field private mFromPackageName:Ljava/lang/String;

.field private mIsAsAlarm:Z

.field private mListContainer:Landroid/view/View;

.field private mListHasFocus:Z

.field private mListShown:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOkayButton:Landroid/view/View;

.field private mPlayingId:J

.field protected mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

.field private mPosition:I

.field private mProgressContainer:Landroid/view/View;

.field private mQueryHandler:Lcom/android/music/LocalMusicPicker$QueryHandler;

.field private mRingtoneType:I

.field private final mScanListener:Landroid/content/BroadcastReceiver;

.field private mSearchKeyWords:Ljava/lang/String;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectedId:J

.field private mSelectedUri:Landroid/net/Uri;

.field private mSortMode:I

.field private mSortOrder:Ljava/lang/String;

.field private mSubId:I

.field private popMenuButtonClick:Landroid/view/View$OnClickListener;

.field private popMenuItemClick:Landroid/view/View$OnClickListener;

.field private searchContainer:Landroid/widget/FrameLayout;

.field private searchLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 117
    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "title_key"

    const-string v3, "_data"

    const-string v4, "album"

    const-string v5, "artist"

    const-string v6, "artist_id"

    const-string v7, "duration"

    const-string v8, "track"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/LocalMusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/music/LocalMusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 132
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/music/LocalMusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/music/LocalMusicPicker;->sFormatter:Ljava/util/Formatter;

    .line 134
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/music/LocalMusicPicker;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 89
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/LocalMusicPicker;->mListState:Landroid/os/Parcelable;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/LocalMusicPicker;->mSortMode:I

    .line 171
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/music/LocalMusicPicker;->mSelectedId:J

    .line 179
    iput-wide v1, p0, Lcom/android/music/LocalMusicPicker;->mPlayingId:J

    .line 191
    iput v0, p0, Lcom/android/music/LocalMusicPicker;->mPosition:I

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/LocalMusicPicker;->mIsAsAlarm:Z

    .line 198
    iput v0, p0, Lcom/android/music/LocalMusicPicker;->mSubId:I

    .line 199
    iput-boolean v0, p0, Lcom/android/music/LocalMusicPicker;->bReceiverScanListener:Z

    .line 201
    iput-boolean v0, p0, Lcom/android/music/LocalMusicPicker;->mFirstNeedUpdate:Z

    .line 801
    new-instance v0, Lcom/android/music/LocalMusicPicker$2;

    invoke-direct {v0, p0}, Lcom/android/music/LocalMusicPicker$2;-><init>(Lcom/android/music/LocalMusicPicker;)V

    iput-object v0, p0, Lcom/android/music/LocalMusicPicker;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 838
    new-instance v0, Lcom/android/music/LocalMusicPicker$3;

    invoke-direct {v0, p0}, Lcom/android/music/LocalMusicPicker$3;-><init>(Lcom/android/music/LocalMusicPicker;)V

    iput-object v0, p0, Lcom/android/music/LocalMusicPicker;->popMenuButtonClick:Landroid/view/View$OnClickListener;

    .line 899
    new-instance v0, Lcom/android/music/LocalMusicPicker$4;

    invoke-direct {v0, p0}, Lcom/android/music/LocalMusicPicker$4;-><init>(Lcom/android/music/LocalMusicPicker;)V

    iput-object v0, p0, Lcom/android/music/LocalMusicPicker;->popMenuItemClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/LocalMusicPicker;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;

    .line 89
    iget-wide v0, p0, Lcom/android/music/LocalMusicPicker;->mSelectedId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/music/LocalMusicPicker;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;

    .line 89
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/music/LocalMusicPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;

    .line 89
    iget-boolean v0, p0, Lcom/android/music/LocalMusicPicker;->mListHasFocus:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/music/LocalMusicPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;
    .param p1, "x1"    # Z

    .line 89
    iput-boolean p1, p0, Lcom/android/music/LocalMusicPicker;->mListHasFocus:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/music/LocalMusicPicker;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;
    .param p1, "x1"    # Landroid/database/Cursor;

    .line 89
    iput-object p1, p0, Lcom/android/music/LocalMusicPicker;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/music/LocalMusicPicker;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;

    .line 89
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/music/LocalMusicPicker;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;

    .line 89
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->popMenuItemClick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/LocalMusicPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;

    .line 89
    iget-boolean v0, p0, Lcom/android/music/LocalMusicPicker;->mFirstNeedUpdate:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/music/LocalMusicPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;
    .param p1, "x1"    # Z

    .line 89
    iput-boolean p1, p0, Lcom/android/music/LocalMusicPicker;->mFirstNeedUpdate:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/music/LocalMusicPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;

    .line 89
    iget v0, p0, Lcom/android/music/LocalMusicPicker;->mPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/music/LocalMusicPicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;
    .param p1, "x1"    # I

    .line 89
    iput p1, p0, Lcom/android/music/LocalMusicPicker;->mPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/music/LocalMusicPicker;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;

    .line 89
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/LocalMusicPicker;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;

    .line 89
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mOkayButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/LocalMusicPicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;

    .line 89
    iget v0, p0, Lcom/android/music/LocalMusicPicker;->mSortMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/music/LocalMusicPicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;

    .line 89
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mSearchKeyWords:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/music/LocalMusicPicker;)Lcom/android/music/LocalMusicPicker$TrackListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;

    .line 89
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mAdapter:Lcom/android/music/LocalMusicPicker$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/music/LocalMusicPicker;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;

    .line 89
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/music/LocalMusicPicker;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .param p0, "x0"    # Lcom/android/music/LocalMusicPicker;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .line 89
    iput-object p1, p0, Lcom/android/music/LocalMusicPicker;->mListState:Landroid/os/Parcelable;

    return-object p1
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secs"    # J

    .line 1250
    nop

    .line 1251
    const-wide/16 v0, 0xe10

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const v2, 0x7f120598

    goto :goto_0

    :cond_0
    const v2, 0x7f120597

    .line 1250
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1256
    .local v2, "durationformat":Ljava/lang/String;
    sget-object v3, Lcom/android/music/LocalMusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1258
    sget-object v3, Lcom/android/music/LocalMusicPicker;->sTimeArgs:[Ljava/lang/Object;

    .line 1259
    .local v3, "timeArgs":[Ljava/lang/Object;
    div-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    .line 1260
    const/4 v0, 0x1

    const-wide/16 v4, 0x3c

    div-long v6, p1, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    .line 1261
    const/4 v0, 0x2

    div-long v6, p1, v4

    rem-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    .line 1262
    const/4 v0, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    .line 1263
    const/4 v0, 0x4

    rem-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    .line 1265
    sget-object v0, Lcom/android/music/LocalMusicPicker;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 993
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 994
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 995
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->finish()V

    .line 996
    return v1

    .line 998
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method doQuery(ZLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "sync"    # Z
    .param p2, "filterstring"    # Ljava/lang/String;
    .param p3, "search"    # Ljava/lang/String;

    .line 1061
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mQueryHandler:Lcom/android/music/LocalMusicPicker$QueryHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/music/LocalMusicPicker$QueryHandler;->cancelOperation(I)V

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1064
    .local v0, "where":Ljava/lang/StringBuilder;
    const-string v1, "title != \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND (title like \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " OR _data like \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    :cond_0
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 1078
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1079
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1082
    :cond_1
    if-eqz p1, :cond_2

    .line 1084
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/music/LocalMusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 1085
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/music/LocalMusicPicker;->mSortOrder:Ljava/lang/String;

    .line 1084
    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1086
    :catch_0
    move-exception v2

    .line 1087
    goto :goto_0

    .line 1089
    :cond_2
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mAdapter:Lcom/android/music/LocalMusicPicker$TrackListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 1090
    invoke-virtual {p0, v3}, Lcom/android/music/LocalMusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 1091
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mQueryHandler:Lcom/android/music/LocalMusicPicker$QueryHandler;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    sget-object v6, Lcom/android/music/LocalMusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 1092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/music/LocalMusicPicker;->mSortOrder:Ljava/lang/String;

    .line 1091
    move-object v5, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/music/LocalMusicPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getCurrentPostion(I)I
    .locals 1
    .param p1, "position"    # I

    .line 1098
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0

    .line 1101
    :cond_0
    return p1
.end method

.method public getRingtonePosition(Landroid/net/Uri;)I
    .locals 10
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 1220
    const/4 v0, -0x1

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/music/LocalMusicPicker;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1222
    :cond_0
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker;->mCursor:Landroid/database/Cursor;

    .line 1223
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1226
    .local v2, "cursorCount":I
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    .line 1227
    return v0

    .line 1231
    :cond_1
    goto :goto_0

    .line 1229
    :catch_0
    move-exception v3

    .line 1230
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1233
    .end local v3
    :goto_0
    const-wide/16 v3, 0x0

    .line 1234
    .local v3, "newId":J
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1236
    .local v5, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 1237
    iget-object v7, p0, Lcom/android/music/LocalMusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/LocalMusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1238
    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1239
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1240
    return v6

    .line 1242
    :cond_2
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->move(I)Z

    .line 1236
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1244
    .end local v6
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1246
    return v0

    .line 1220
    .end local v1
    .end local v2
    .end local v3
    .end local v5
    :cond_4
    :goto_2
    return v0
.end method

.method public initPopupWindowDialog()V
    .locals 4

    .line 880
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    if-nez v0, :cond_0

    .line 881
    return-void

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120d56

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/custom/PopWinDialog;->addItem(ILjava/lang/CharSequence;)V

    .line 884
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120d54

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/custom/PopWinDialog;->addItem(ILjava/lang/CharSequence;)V

    .line 885
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120d55

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/custom/PopWinDialog;->addItem(ILjava/lang/CharSequence;)V

    .line 887
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->updatePopupWindowDialog()V

    .line 888
    return-void
.end method

.method public initSearchViewDisplay(Landroid/widget/SearchView;)V
    .locals 14
    .param p1, "mSearch"    # Landroid/widget/SearchView;

    .line 709
    if-nez p1, :cond_0

    .line 710
    return-void

    .line 712
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 713
    invoke-virtual {p1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 714
    invoke-virtual {p1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "android:id/search_mag_icon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 715
    .local v0, "imgId":I
    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 716
    .local v1, "searchButton":Landroid/widget/ImageView;
    const v3, 0x7f0801a2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 717
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 718
    .local v3, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070169

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 719
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    invoke-virtual {p1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "android:id/search_edit_frame"

    invoke-virtual {v4, v5, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 722
    .local v4, "continerId":I
    invoke-virtual {p1, v4}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 723
    .local v5, "searchEditFrame":Landroid/widget/LinearLayout;
    const v6, 0x7f0802b5

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 724
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 725
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070167

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 726
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07016b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 727
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 729
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 731
    invoke-virtual {p1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "android:id/search_plate"

    invoke-virtual {v7, v8, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 732
    .local v7, "searchPlateId":I
    invoke-virtual {p1, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 733
    .local v8, "searchPlate":Landroid/widget/LinearLayout;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v3, v9

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 734
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07016a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 735
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 736
    const/16 v9, 0x50

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 737
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 740
    invoke-virtual {p1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "android:id/search_close_btn"

    invoke-virtual {v9, v10, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 741
    .local v9, "closeButtonViewId":I
    if-lez v9, :cond_1

    .line 742
    invoke-virtual {p1, v9}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 743
    .local v10, "mCloseButton":Landroid/widget/ImageView;
    if-eqz v10, :cond_1

    .line 744
    const v11, 0x7f080151

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 748
    .end local v10
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "android:id/search_src_text"

    invoke-virtual {v10, v11, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 749
    .local v10, "searchSrcId":I
    if-lez v10, :cond_2

    .line 750
    invoke-virtual {p1, v10}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 751
    .local v11, "mSearchSrcTextView":Landroid/widget/TextView;
    if-eqz v11, :cond_2

    .line 752
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060104

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 753
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060103

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 754
    const/4 v12, 0x2

    const/high16 v13, 0x41b00000

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 755
    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object v3, v12

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 756
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070168

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 757
    const/16 v12, 0xf

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 758
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120cfd

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 760
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setElevation(F)V

    .line 761
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 762
    new-instance v2, Lcom/android/music/LocalMusicPicker$1;

    invoke-direct {v2, p0}, Lcom/android/music/LocalMusicPicker$1;-><init>(Lcom/android/music/LocalMusicPicker;)V

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 774
    invoke-virtual {v11}, Landroid/widget/TextView;->clearFocus()V

    .line 775
    invoke-virtual {p1}, Landroid/widget/SearchView;->clearFocus()V

    .line 779
    .end local v0
    .end local v1
    .end local v3
    .end local v4
    .end local v5
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    :cond_2
    return-void
.end method

.method makeListShown()V
    .locals 2

    .line 1039
    iget-boolean v0, p0, Lcom/android/music/LocalMusicPicker;->mListShown:Z

    if-nez v0, :cond_0

    .line 1040
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/LocalMusicPicker;->mListShown:Z

    .line 1041
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mProgressContainer:Landroid/view/View;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1043
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mProgressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mListContainer:Landroid/view/View;

    const/high16 v1, 0x10a0000

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1046
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mListContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 1185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00c3

    if-eq v0, v1, :cond_c

    const v1, 0x7f0a02be

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    .line 1187
    :cond_0
    iget-wide v0, p0, Lcom/android/music/LocalMusicPicker;->mSelectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d

    .line 1188
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mFromPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcom/android/music/LocalMusicPicker;->mFromPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1189
    iget v0, p0, Lcom/android/music/LocalMusicPicker;->mRingtoneType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 1190
    iget v0, p0, Lcom/android/music/LocalMusicPicker;->mSubId:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 1191
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms_ringtone_sound"

    iget-object v3, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_6

    .line 1193
    :cond_2
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_sound"

    iget-object v3, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .line 1195
    :cond_4
    iget v0, p0, Lcom/android/music/LocalMusicPicker;->mRingtoneType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1196
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ringtone"

    iget-object v4, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-nez v4, :cond_5

    move-object v4, v2

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1197
    iget v0, p0, Lcom/android/music/LocalMusicPicker;->mSubId:I

    if-nez v0, :cond_7

    .line 1198
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone"

    iget-object v3, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .line 1199
    :cond_7
    iget v0, p0, Lcom/android/music/LocalMusicPicker;->mSubId:I

    if-ne v0, v1, :cond_b

    .line 1200
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone_2"

    iget-object v3, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .line 1202
    :cond_9
    iget v0, p0, Lcom/android/music/LocalMusicPicker;->mRingtoneType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 1203
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "alarm_alert"

    iget-object v3, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-nez v3, :cond_a

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1206
    :cond_b
    :goto_6
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    iget-object v3, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/music/LocalMusicPicker;->setResult(ILandroid/content/Intent;)V

    .line 1207
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->finish()V

    goto :goto_7

    .line 1212
    :cond_c
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->finish()V

    .line 1215
    :cond_d
    :goto_7
    return-void
.end method

.method public onClose()Z
    .locals 1

    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 1166
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-ne v0, p1, :cond_0

    .line 1167
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 1168
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 1169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/LocalMusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1170
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/LocalMusicPicker;->mPlayingId:J

    .line 1171
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1173
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 553
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 554
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/music/LocalMusicPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/music/LocalMusicPicker;->mAudioManager:Landroid/media/AudioManager;

    .line 558
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 559
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 561
    .local v2, "lcdwidth":I
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070190

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 562
    .local v3, "leftmarginSmall":I
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07018f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 564
    .local v4, "leftmarginBigger":I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d0029

    const v7, 0x7f0a0016

    invoke-virtual {p0, v7}, Lcom/android/music/LocalMusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 565
    .local v5, "actionbarLayout":Landroid/view/View;
    const v6, 0x7f0a024d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 566
    const v6, 0x7f0a024e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 567
    const v6, 0x7f0a0250

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 568
    .local v6, "child":Landroid/view/View;
    move-object v7, v6

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f1207a6

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 569
    invoke-virtual {v6, v3, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 570
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 571
    .local v7, "vglp":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v8, v2

    const v9, 0x3eb33333    # 0.35f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 572
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    const v8, 0x7f0a024f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 574
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 575
    int-to-float v8, v2

    const v9, 0x3f266666    # 0.65f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 576
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 580
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 582
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 583
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 586
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "mIsAsAlarm"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/music/LocalMusicPicker;->mIsAsAlarm:Z

    .line 587
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSearchKeyWords:Ljava/lang/String;

    .line 589
    const/4 v3, 0x1

    .line 590
    .local v3, "sortMode":I
    if-nez p1, :cond_1

    .line 591
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    goto :goto_0

    .line 594
    :cond_1
    const-string v4, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 598
    const-string v4, "liststate"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/LocalMusicPicker;->mListState:Landroid/os/Parcelable;

    .line 599
    const-string v4, "focused"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/music/LocalMusicPicker;->mListHasFocus:Z

    .line 600
    const-string v4, "sortMode"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 602
    :goto_0
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 603
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/music/LocalMusicPicker;->mBaseUri:Landroid/net/Uri;

    goto :goto_1

    .line 605
    :cond_2
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/LocalMusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 606
    iget-object v4, p0, Lcom/android/music/LocalMusicPicker;->mBaseUri:Landroid/net/Uri;

    if-nez v4, :cond_3

    .line 607
    const-string v1, "MusicPicker"

    const-string v2, "No data URI given to PICK action"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->finish()V

    .line 609
    return-void

    .line 613
    :cond_3
    :goto_1
    const v4, 0x7f0d00ec

    invoke-virtual {p0, v4}, Lcom/android/music/LocalMusicPicker;->setContentView(I)V

    .line 615
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 616
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_4

    const-string v5, "SubId"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 617
    const-string v5, "SubId"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/music/LocalMusicPicker;->mSubId:I

    goto :goto_2

    .line 619
    :cond_4
    iput v1, p0, Lcom/android/music/LocalMusicPicker;->mSubId:I

    .line 621
    :goto_2
    if-eqz v4, :cond_5

    const-string v5, "FROMPACKAGENAME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 622
    const-string v2, "FROMPACKAGENAME"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/LocalMusicPicker;->mFromPackageName:Ljava/lang/String;

    goto :goto_3

    .line 624
    :cond_5
    iput-object v2, p0, Lcom/android/music/LocalMusicPicker;->mFromPackageName:Ljava/lang/String;

    .line 627
    :goto_3
    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/music/LocalMusicPicker;->mRingtoneType:I

    .line 629
    const-string v2, "title_key"

    iput-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSortOrder:Ljava/lang/String;

    .line 631
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/LocalMusicPicker;->mListView:Landroid/widget/ListView;

    .line 633
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 635
    new-instance v2, Lcom/android/music/LocalMusicPicker$TrackListAdapter;

    iget-object v9, p0, Lcom/android/music/LocalMusicPicker;->mListView:Landroid/widget/ListView;

    const v10, 0x7f0d00ee

    new-array v11, v1, [Ljava/lang/String;

    new-array v12, v1, [I

    move-object v6, v2

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/music/LocalMusicPicker$TrackListAdapter;-><init>(Lcom/android/music/LocalMusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V

    iput-object v2, p0, Lcom/android/music/LocalMusicPicker;->mAdapter:Lcom/android/music/LocalMusicPicker$TrackListAdapter;

    .line 639
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mAdapter:Lcom/android/music/LocalMusicPicker$TrackListAdapter;

    invoke-virtual {p0, v2}, Lcom/android/music/LocalMusicPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 641
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 644
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 646
    new-instance v2, Lcom/android/music/LocalMusicPicker$QueryHandler;

    invoke-direct {v2, p0, p0}, Lcom/android/music/LocalMusicPicker$QueryHandler;-><init>(Lcom/android/music/LocalMusicPicker;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/music/LocalMusicPicker;->mQueryHandler:Lcom/android/music/LocalMusicPicker$QueryHandler;

    .line 648
    const v2, 0x7f0a0326

    invoke-virtual {p0, v2}, Lcom/android/music/LocalMusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/LocalMusicPicker;->mProgressContainer:Landroid/view/View;

    .line 649
    const v2, 0x7f0a0239

    invoke-virtual {p0, v2}, Lcom/android/music/LocalMusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/LocalMusicPicker;->mListContainer:Landroid/view/View;

    .line 651
    const v2, 0x7f0a02be

    invoke-virtual {p0, v2}, Lcom/android/music/LocalMusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/LocalMusicPicker;->mOkayButton:Landroid/view/View;

    .line 652
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mOkayButton:Landroid/view/View;

    iget-wide v6, p0, Lcom/android/music/LocalMusicPicker;->mSelectedId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    move v6, v5

    goto :goto_4

    :cond_6
    move v6, v1

    :goto_4
    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 653
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mOkayButton:Landroid/view/View;

    check-cast v2, Landroid/widget/Button;

    const v6, 0x7f120bd9

    invoke-virtual {p0, v6}, Lcom/android/music/LocalMusicPicker;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mOkayButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    const v2, 0x7f0a00c3

    invoke-virtual {p0, v2}, Lcom/android/music/LocalMusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/LocalMusicPicker;->mCancelButton:Landroid/view/View;

    .line 656
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mCancelButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    const v2, 0x7f0a0395

    invoke-virtual {p0, v2}, Lcom/android/music/LocalMusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/music/LocalMusicPicker;->searchContainer:Landroid/widget/FrameLayout;

    .line 659
    const v2, 0x7f0a0396

    invoke-virtual {p0, v2}, Lcom/android/music/LocalMusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/music/LocalMusicPicker;->searchLayout:Landroid/widget/LinearLayout;

    .line 660
    const v2, 0x7f0a0397

    invoke-virtual {p0, v2}, Lcom/android/music/LocalMusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSearchView:Landroid/widget/SearchView;

    .line 661
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->performClick()Z

    .line 664
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0, v2}, Lcom/android/music/LocalMusicPicker;->initSearchViewDisplay(Landroid/widget/SearchView;)V

    .line 666
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 667
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 671
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-eqz v2, :cond_8

    .line 672
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 673
    .local v2, "builder":Landroid/net/Uri$Builder;
    iget-object v6, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    .line 674
    .local v6, "path":Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 675
    .local v7, "idx":I
    if-ltz v7, :cond_7

    .line 676
    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 678
    :cond_7
    invoke-virtual {v2, v6}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 679
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 680
    .local v1, "baseSelectedUri":Landroid/net/Uri;
    const-string v8, "LocalMusicPicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Selected Uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v8, "LocalMusicPicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Selected base Uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v8, "LocalMusicPicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Base Uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/music/LocalMusicPicker;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v8, p0, Lcom/android/music/LocalMusicPicker;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 687
    iget-object v8, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/music/LocalMusicPicker;->mSelectedId:J

    .line 688
    iput-boolean v5, p0, Lcom/android/music/LocalMusicPicker;->mFirstNeedUpdate:Z

    .line 697
    .end local v1
    .end local v2
    .end local v6
    .end local v7
    :cond_8
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 698
    .local v1, "f":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 701
    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/music/LocalMusicPicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 702
    iput-boolean v5, p0, Lcom/android/music/LocalMusicPicker;->bReceiverScanListener:Z

    .line 703
    invoke-virtual {p0, v3}, Lcom/android/music/LocalMusicPicker;->setSortMode(I)Z

    .line 706
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 835
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 984
    iget-boolean v0, p0, Lcom/android/music/LocalMusicPicker;->bReceiverScanListener:Z

    if-eqz v0, :cond_0

    .line 985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/LocalMusicPicker;->bReceiverScanListener:Z

    .line 986
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/LocalMusicPicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 988
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 989
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 1107
    invoke-virtual {p0, p3}, Lcom/android/music/LocalMusicPicker;->getCurrentPostion(I)I

    move-result p3

    .line 1108
    iput p3, p0, Lcom/android/music/LocalMusicPicker;->mPosition:I

    .line 1109
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1115
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/LocalMusicPicker;->setSelected(Landroid/database/Cursor;)V

    .line 1116
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 822
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/music/LocalMusicPicker;->setSortMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    const/4 v0, 0x1

    return v0

    .line 825
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 960
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 961
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->stopMediaPlayer()V

    .line 962
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 963
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 968
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;

    .line 795
    const-string v0, "LocalMusicPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====divhee=======newText=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iput-object p1, p0, Lcom/android/music/LocalMusicPicker;->mSearchKeyWords:Ljava/lang/String;

    .line 797
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mSearchKeyWords:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/music/LocalMusicPicker;->doQuery(ZLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 798
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .line 789
    const-string v0, "LocalMusicPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====divhee=======query=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v0, 0x1

    return v0
.end method

.method public onRestart()V
    .locals 3

    .line 816
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 817
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mSearchKeyWords:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/music/LocalMusicPicker;->doQuery(ZLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 818
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 945
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 948
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 949
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusableInTouchMode(Z)V

    .line 950
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 956
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 934
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 937
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v1, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 938
    const-string v0, "liststate"

    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 939
    const-string v0, "focused"

    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 940
    const-string v0, "sortMode"

    iget v1, p0, Lcom/android/music/LocalMusicPicker;->mSortMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 941
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 972
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 978
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mAdapter:Lcom/android/music/LocalMusicPicker$TrackListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 979
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mAdapter:Lcom/android/music/LocalMusicPicker$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 980
    return-void
.end method

.method protected setSelected(Landroid/database/Cursor;)V
    .locals 9
    .param p1, "c"    # Landroid/database/Cursor;

    .line 1119
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1120
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/LocalMusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1122
    .local v1, "newId":J
    iget-object v3, p0, Lcom/android/music/LocalMusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/LocalMusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1137
    .local v3, "data":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 1139
    iput-wide v1, p0, Lcom/android/music/LocalMusicPicker;->mSelectedId:J

    .line 1140
    iget-object v4, p0, Lcom/android/music/LocalMusicPicker;->mOkayButton:Landroid/view/View;

    iget-wide v5, p0, Lcom/android/music/LocalMusicPicker;->mSelectedId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1141
    iget-wide v4, p0, Lcom/android/music/LocalMusicPicker;->mPlayingId:J

    cmp-long v4, v1, v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/music/LocalMusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_1

    goto :goto_1

    .line 1159
    :cond_1
    iget-object v4, p0, Lcom/android/music/LocalMusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_3

    .line 1160
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->stopMediaPlayer()V

    .line 1161
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_3

    .line 1142
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->stopMediaPlayer()V

    .line 1143
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/android/music/LocalMusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1145
    :try_start_0
    iget-object v4, p0, Lcom/android/music/LocalMusicPicker;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v7, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1147
    iget-object v4, p0, Lcom/android/music/LocalMusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/android/music/LocalMusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v4, p0, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1148
    iget-object v4, p0, Lcom/android/music/LocalMusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1149
    iget-object v4, p0, Lcom/android/music/LocalMusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1150
    iget-object v4, p0, Lcom/android/music/LocalMusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 1151
    iget-object v4, p0, Lcom/android/music/LocalMusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 1152
    iput-wide v1, p0, Lcom/android/music/LocalMusicPicker;->mPlayingId:J

    .line 1153
    invoke-virtual {p0}, Lcom/android/music/LocalMusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1156
    :catch_0
    move-exception v4

    .line 1157
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v5, "MusicPicker"

    const-string v6, "The mSelectedUri is invalid"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4
    goto :goto_2

    .line 1154
    :catch_1
    move-exception v4

    .line 1155
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "MusicPicker"

    const-string v6, "Unable to play track"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1158
    .end local v4
    :goto_2
    nop

    .line 1163
    :cond_3
    :goto_3
    return-void
.end method

.method setSortMode(I)Z
    .locals 4
    .param p1, "sortMode"    # I

    .line 1006
    iget v0, p0, Lcom/android/music/LocalMusicPicker;->mSortMode:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 1007
    const/4 v0, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1021
    :pswitch_0    # 0x3
    iput p1, p0, Lcom/android/music/LocalMusicPicker;->mSortMode:I

    .line 1022
    const-string v3, "artist_key ASC, album_key ASC, track ASC, title_key ASC"

    iput-object v3, p0, Lcom/android/music/LocalMusicPicker;->mSortOrder:Ljava/lang/String;

    .line 1026
    iget-object v3, p0, Lcom/android/music/LocalMusicPicker;->mSearchKeyWords:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/music/LocalMusicPicker;->doQuery(ZLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1027
    return v0

    .line 1014
    :pswitch_1    # 0x2
    iput p1, p0, Lcom/android/music/LocalMusicPicker;->mSortMode:I

    .line 1015
    const-string v3, "album_key ASC, track ASC, title_key ASC"

    iput-object v3, p0, Lcom/android/music/LocalMusicPicker;->mSortOrder:Ljava/lang/String;

    .line 1018
    iget-object v3, p0, Lcom/android/music/LocalMusicPicker;->mSearchKeyWords:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/music/LocalMusicPicker;->doQuery(ZLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1019
    return v0

    .line 1009
    :pswitch_2    # 0x1
    iput p1, p0, Lcom/android/music/LocalMusicPicker;->mSortMode:I

    .line 1010
    const-string v3, "title_key"

    iput-object v3, p0, Lcom/android/music/LocalMusicPicker;->mSortOrder:Ljava/lang/String;

    .line 1011
    iget-object v3, p0, Lcom/android/music/LocalMusicPicker;->mSearchKeyWords:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/music/LocalMusicPicker;->doQuery(ZLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1012
    return v0

    .line 1031
    :cond_0
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method stopMediaPlayer()V
    .locals 2

    .line 1176
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1178
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/LocalMusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1180
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/LocalMusicPicker;->mPlayingId:J

    .line 1182
    :cond_0
    return-void
.end method

.method protected updatePopupWindowDialog()V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker;->mPopWinDlg:Lcom/android/settings/custom/PopWinDialog;

    if-nez v0, :cond_0

    .line 892
    return-void

    .line 897
    :cond_0
    return-void
.end method
