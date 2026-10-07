.class Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$1;
.super Ljava/lang/Object;
.source "ShortcutEnableAppListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/shortcutenable/AppDataCell;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    .line 135
    iput-object p1, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$1;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/settings/shortcutenable/AppDataCell;Lcom/android/settings/shortcutenable/AppDataCell;)I
    .locals 5
    .param p1, "dataCell_1"    # Lcom/android/settings/shortcutenable/AppDataCell;
    .param p2, "dataCell_2"    # Lcom/android/settings/shortcutenable/AppDataCell;

    .line 138
    iget-object v0, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$1;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    iget-object v0, v0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mLauncherShortcutEnablePkgNameList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/shortcutenable/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 139
    .local v0, "ifind1":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$1;->this$0:Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    iget-object v3, v3, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->mLauncherShortcutEnablePkgNameList:Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/android/settings/shortcutenable/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 140
    .local v3, "ifind2":I
    :goto_1
    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    if-ne v3, v2, :cond_2

    .line 141
    return v4

    .line 142
    :cond_2
    if-eq v0, v2, :cond_3

    if-ne v3, v2, :cond_3

    .line 143
    return v2

    .line 144
    :cond_3
    if-ne v0, v2, :cond_4

    if-eq v3, v2, :cond_4

    .line 145
    return v1

    .line 146
    :cond_4
    if-le v0, v3, :cond_5

    .line 147
    return v1

    .line 148
    :cond_5
    if-ge v0, v3, :cond_6

    .line 149
    return v2

    .line 151
    :cond_6
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 135
    check-cast p1, Lcom/android/settings/shortcutenable/AppDataCell;

    check-cast p2, Lcom/android/settings/shortcutenable/AppDataCell;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$1;->compare(Lcom/android/settings/shortcutenable/AppDataCell;Lcom/android/settings/shortcutenable/AppDataCell;)I

    move-result p1

    return p1
.end method
