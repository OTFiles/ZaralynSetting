.class public abstract Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;
.source "BaseTimeZoneInfoPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;


# direct methods
.method protected constructor <init>(IIZZ)V
    .locals 0
    .param p1, "titleResId"    # I
    .param p2, "searchHintResId"    # I
    .param p3, "searchEnabled"    # Z
    .param p4, "defaultExpandSearch"    # Z

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;-><init>(IIZZ)V

    .line 47
    return-void
.end method

.method public static synthetic lambda$rmIiAzryW5v4Oz5tFaKKhXINMbA(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->onListItemClick(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;)V

    return-void
.end method

.method private onListItemClick(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;)V
    .locals 4
    .param p1, "item"    # Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;

    .line 64
    invoke-static {p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->access$000(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object v0

    .line 65
    .local v0, "timeZoneInfo":Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 66
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->prepareResultData(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 67
    instance-of v2, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_0

    .line 68
    move-object v2, v1

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->onBackTask()V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 72
    :goto_0
    return-void
.end method


# virtual methods
.method protected createAdapter(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
    .locals 7
    .param p1, "timeZoneData"    # Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 51
    new-instance v6, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->getAllTimeZoneInfos(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/settings/datetime/timezone/-$$Lambda$BaseTimeZoneInfoPicker$rmIiAzryW5v4Oz5tFaKKhXINMbA;

    invoke-direct {v3, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$BaseTimeZoneInfoPicker$rmIiAzryW5v4Oz5tFaKKhXINMbA;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;Ljava/util/Locale;Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;

    .line 53
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;

    return-object v0
.end method

.method public abstract getAllTimeZoneInfos(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/datetime/timezone/model/TimeZoneData;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method protected prepareResultData(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Landroid/content/Intent;
    .locals 3
    .param p1, "selectedTimeZoneInfo"    # Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.datetime.timezone.result_time_zone_id"

    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
