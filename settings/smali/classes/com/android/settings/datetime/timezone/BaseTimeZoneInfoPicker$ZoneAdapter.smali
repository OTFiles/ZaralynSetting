.class public Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;
.super Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.source "BaseTimeZoneInfoPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ZoneAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<",
        "Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;Ljava/util/Locale;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "locale"    # Ljava/util/Locale;
    .param p5, "headerText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
            ">;",
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener<",
            "Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 85
    .local p2, "timeZones":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/datetime/timezone/TimeZoneInfo;>;"
    .local p3, "onListItemClickListener":Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;, "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener<Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;>;"
    invoke-static {p1, p2, p4}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;->createTimeZoneInfoItems(Landroid/content/Context;Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;-><init>(Ljava/util/List;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;Ljava/util/Locale;ZLjava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method private static createTimeZoneInfoItems(Landroid/content/Context;Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;",
            ">;"
        }
    .end annotation

    .line 92
    .local p1, "timeZones":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/datetime/timezone/TimeZoneInfo;>;"
    new-instance v5, Landroid/icu/text/SimpleDateFormat;

    .line 93
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, p2

    invoke-direct {v5, v0, v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 94
    .local v5, "currentTimeFormat":Landroid/icu/text/DateFormat;
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v0

    .line 95
    .local v8, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 96
    .local v9, "resources":Landroid/content/res/Resources;
    const-wide/16 v0, 0x0

    .line 97
    .local v0, "i":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v1, v0

    .end local v0
    .local v1, "i":J
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 98
    .local v11, "timeZone":Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    new-instance v12, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;

    const-wide/16 v3, 0x1

    add-long v13, v1, v3

    .local v13, "i":J
    const/4 v6, 0x0

    move-object v0, v12

    .end local v1
    move-object v3, v11

    move-object v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;-><init>(JLcom/android/settings/datetime/timezone/TimeZoneInfo;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$1;)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v11
    nop

    .line 97
    move-wide v1, v13

    goto :goto_0

    .line 100
    .end local v13
    .restart local v1
    :cond_0
    return-object v8
.end method
