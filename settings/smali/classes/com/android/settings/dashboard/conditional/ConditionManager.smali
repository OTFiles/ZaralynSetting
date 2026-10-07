.class public Lcom/android/settings/dashboard/conditional/ConditionManager;
.super Ljava/lang/Object;
.source "ConditionManager.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;,
        Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;
    }
.end annotation


# static fields
.field private static final CONDITION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;


# instance fields
.field private final mConditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mXmlFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 300
    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionManager$1;

    invoke-direct {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager$1;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loadConditionsNow"    # Z

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 66
    const-string v2, "ConditionManager"

    const-string v3, "conditions loading synchronously"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v2, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settings/dashboard/conditional/ConditionManager$1;)V

    move-object v1, v2

    .line 68
    .local v1, "loader":Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;
    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->onPostExecute(Ljava/util/ArrayList;)V

    .line 69
    .end local v1
    goto :goto_0

    .line 70
    :cond_0
    const-string v2, "ConditionManager"

    const-string v3, "conditions loading asychronously"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v2, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settings/dashboard/conditional/ConditionManager$1;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 41
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/conditional/ConditionManager;
    .param p1, "x1"    # Ljava/io/File;

    .line 41
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/conditional/ConditionManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 41
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/conditional/ConditionManager;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->readFromXml(Ljava/io/File;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/conditional/ConditionManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addMissingConditions(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 41
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/settings/dashboard/conditional/Condition;>;"
    .local p2, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/conditional/Condition;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    .line 166
    .local v0, "condition":Lcom/android/settings/dashboard/conditional/Condition;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v0
    :cond_0
    return-void
.end method

.method private addMissingConditions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p1, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/conditional/Condition;>;"
    const-class v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 150
    const-class v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 151
    const-class v0, Lcom/android/settings/dashboard/conditional/DndCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 152
    const-class v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 153
    const-class v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 154
    const-class v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 155
    const-class v0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 156
    const-class v0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 157
    const-class v0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 158
    const-class v0, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 159
    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 160
    return-void
.end method

.method private createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/settings/dashboard/conditional/Condition;"
        }
    .end annotation

    .line 173
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    if-ne v0, p1, :cond_0

    .line 174
    new-instance v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 175
    :cond_0
    const-class v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    if-ne v0, p1, :cond_1

    .line 176
    new-instance v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/HotspotCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 177
    :cond_1
    const-class v0, Lcom/android/settings/dashboard/conditional/DndCondition;

    if-ne v0, p1, :cond_2

    .line 178
    new-instance v0, Lcom/android/settings/dashboard/conditional/DndCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/DndCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 179
    :cond_2
    const-class v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    if-ne v0, p1, :cond_3

    .line 180
    new-instance v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 181
    :cond_3
    const-class v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    if-ne v0, p1, :cond_4

    .line 182
    new-instance v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/CellularDataCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 183
    :cond_4
    const-class v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    if-ne v0, p1, :cond_5

    .line 184
    new-instance v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 185
    :cond_5
    const-class v0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    if-ne v0, p1, :cond_6

    .line 186
    new-instance v0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/WorkModeCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 187
    :cond_6
    const-class v0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;

    if-ne v0, p1, :cond_7

    .line 188
    new-instance v0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 189
    :cond_7
    const-class v0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;

    if-ne v0, p1, :cond_8

    .line 190
    new-instance v0, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/RingerMutedCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 191
    :cond_8
    const-class v0, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;

    if-ne v0, p1, :cond_9

    .line 192
    new-instance v0, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/RingerVibrateCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 194
    :cond_9
    const-string v0, "ConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown condition class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/android/settings/dashboard/conditional/ConditionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 286
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "loadConditionsNow"    # Z

    .line 290
    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 293
    :cond_0
    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    return-object v0
.end method

.method private getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)TT;"
        }
    .end annotation

    .line 207
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/conditional/Condition;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 208
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 209
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    return-object v2

    .line 208
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v1
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private readFromXml(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "xmlFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p2, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/conditional/Condition;>;"
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 86
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 87
    .local v1, "in":Ljava/io/FileReader;
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 88
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 90
    .local v2, "state":I
    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 91
    const-string v3, "c"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 93
    .local v3, "depth":I
    const-string v4, ""

    const-string v5, "cls"

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "clz":Ljava/lang/String;
    const-string v5, "com.android.settings.dashboard.conditional."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.android.settings.dashboard.conditional."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 97
    :cond_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/dashboard/conditional/ConditionManager;->createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v5

    .line 98
    .local v5, "condition":Lcom/android/settings/dashboard/conditional/Condition;
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 100
    .local v6, "bundle":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_1

    .line 101
    invoke-virtual {v5, v6}, Lcom/android/settings/dashboard/conditional/Condition;->restoreState(Landroid/os/PersistableBundle;)V

    .line 102
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_1
    const-string v7, "ConditionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to add condition: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_2

    .line 107
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    .line 110
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v2, v3

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 115
    .end local v0
    .end local v1
    .end local v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ConditionManager"

    const-string v2, "Problem reading condition_state.xml"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0
    :goto_2
    return-void
.end method

.method private saveToXml()V
    .locals 8

    .line 121
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 122
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 123
    .local v1, "writer":Ljava/io/FileWriter;
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 125
    const-string v2, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 126
    const-string v2, ""

    const-string v3, "cs"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 129
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 130
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 131
    .local v4, "bundle":Landroid/os/PersistableBundle;
    iget-object v5, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v5, v4}, Lcom/android/settings/dashboard/conditional/Condition;->saveState(Landroid/os/PersistableBundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    const-string v5, ""

    const-string v6, "c"

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    iget-object v5, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "clz":Ljava/lang/String;
    const-string v6, ""

    const-string v7, "cls"

    invoke-interface {v0, v6, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 136
    const-string v6, ""

    const-string v7, "c"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    .end local v4
    .end local v5
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    .end local v3
    :cond_1
    const-string v3, ""

    const-string v4, "cs"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 142
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 145
    .end local v0
    .end local v1
    .end local v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ConditionManager"

    const-string v2, "Problem writing condition_state.xml"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v0
    :goto_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;

    .line 241
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {p1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;->onConditionsChanged()V

    .line 243
    return-void
.end method

.method public getCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 203
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    return-object v0
.end method

.method public getConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public notifyChanged(Lcom/android/settings/dashboard/conditional/Condition;)V
    .locals 3
    .param p1, "condition"    # Lcom/android/settings/dashboard/conditional/Condition;

    .line 232
    invoke-direct {p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->saveToXml()V

    .line 233
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 235
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;

    invoke-interface {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;->onConditionsChanged()V

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v1
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/Condition;->onPause()V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v0
    .end local v1
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 252
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/Condition;->onResume()V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v0
    .end local v1
    :cond_0
    return-void
.end method

.method public refreshAll()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 77
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/Condition;->refreshState()V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1
    :cond_0
    return-void
.end method

.method public remListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;

    .line 246
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method
