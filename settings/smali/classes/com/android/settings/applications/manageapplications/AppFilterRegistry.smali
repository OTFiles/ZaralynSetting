.class public Lcom/android/settings/applications/manageapplications/AppFilterRegistry;
.super Ljava/lang/Object;
.source "AppFilterRegistry.java"


# static fields
.field private static sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;


# instance fields
.field private final mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/settings/applications/manageapplications/AppFilterItem;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settings/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    sget-object v4, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    invoke-direct {v2, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v3, 0x0

    const v4, 0x7f1206e8

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    aput-object v1, v0, v3

    .line 92
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    sget-object v4, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    invoke-direct {v2, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v3, 0x1

    const v4, 0x7f12061b

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    aput-object v1, v0, v3

    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    aput-object v1, v0, v3

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const/4 v3, 0x3

    const v5, 0x7f120622

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    aput-object v1, v0, v3

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const/4 v3, 0x5

    const v5, 0x7f12061d

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    aput-object v1, v0, v3

    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const/4 v3, 0x4

    const v5, 0x7f120624

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    aput-object v1, v0, v3

    .line 124
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_RECENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const/4 v3, 0x6

    const v5, 0x7f120d5a

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    aput-object v1, v0, v3

    .line 130
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_FREQUENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const/4 v3, 0x7

    const v5, 0x7f120d59

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    aput-object v1, v0, v3

    .line 136
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const/16 v3, 0x8

    const v5, 0x7f12062c

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    aput-object v1, v0, v3

    .line 142
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const/16 v3, 0x9

    const v5, 0x7f12062d

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    aput-object v1, v0, v3

    .line 148
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    aput-object v1, v0, v3

    .line 154
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const/16 v3, 0xb

    const v4, 0x7f12062b

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    aput-object v1, v0, v3

    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const v3, 0x7f12062e

    const/16 v4, 0xc

    invoke-direct {v1, v2, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    aput-object v1, v0, v4

    .line 166
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const/16 v4, 0xd

    const v5, 0x7f120623

    invoke-direct {v1, v2, v4, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 172
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateDirectoryAccessBridge;->FILTER_APP_HAS_DIRECTORY_ACCESS:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const/16 v4, 0xe

    invoke-direct {v1, v2, v4, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 177
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->FILTER_CHANGE_WIFI_STATE:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const/16 v4, 0xf

    invoke-direct {v1, v2, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 181
    return-void
.end method

.method public static getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;
    .locals 1

    .line 184
    sget-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    invoke-direct {v0}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;-><init>()V

    sput-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    .line 187
    :cond_0
    sget-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;
    .locals 1
    .param p1, "filterType"    # I

    .line 215
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getDefaultFilterType(I)I
    .locals 1
    .param p1, "listType"    # I

    .line 192
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 210
    const/4 v0, 0x2

    return v0

    .line 206
    :pswitch_0    # 0xd
    const/16 v0, 0xf

    return v0

    .line 204
    :pswitch_1    # 0xc
    const/16 v0, 0xe

    return v0

    .line 202
    :pswitch_2    # 0x8
    const/16 v0, 0xd

    return v0

    .line 200
    :pswitch_3    # 0x7
    const/16 v0, 0xc

    return v0

    .line 198
    :pswitch_4    # 0x6
    const/16 v0, 0xb

    return v0

    .line 196
    :pswitch_5    # 0x5
    const/4 v0, 0x0

    return v0

    .line 194
    :pswitch_6    # 0x4
    const/16 v0, 0xa

    return v0

    .line 208
    :cond_0
    const/4 v0, 0x6

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6    # 0x4
        :pswitch_5    # 0x5
        :pswitch_4    # 0x6
        :pswitch_3    # 0x7
        :pswitch_2    # 0x8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1    # 0xc
        :pswitch_0    # 0xd
    .end packed-switch
.end method
