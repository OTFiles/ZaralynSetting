.class public Lcom/android/settings/dashboard/DashboardData$Builder;
.super Ljava/lang/Object;
.source "DashboardData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

.field private mConditionExpanded:Z

.field private mConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dashboard/DashboardData;)V
    .locals 1
    .param p1, "dashboardData"    # Lcom/android/settings/dashboard/DashboardData;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData;->access$400(Lcom/android/settings/dashboard/DashboardData;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    .line 270
    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData;->access$500(Lcom/android/settings/dashboard/DashboardData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mConditions:Ljava/util/List;

    .line 271
    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData;->access$600(Lcom/android/settings/dashboard/DashboardData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mSuggestions:Ljava/util/List;

    .line 272
    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData;->access$700(Lcom/android/settings/dashboard/DashboardData;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mConditionExpanded:Z

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardData$Builder;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardData$Builder;

    .line 259
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/DashboardData$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardData$Builder;

    .line 259
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mConditions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/DashboardData$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardData$Builder;

    .line 259
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/DashboardData$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardData$Builder;

    .line 259
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mConditionExpanded:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/android/settings/dashboard/DashboardData;
    .locals 2

    .line 296
    new-instance v0, Lcom/android/settings/dashboard/DashboardData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardData;-><init>(Lcom/android/settings/dashboard/DashboardData$Builder;Lcom/android/settings/dashboard/DashboardData$1;)V

    return-object v0
.end method

.method public setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)Lcom/android/settings/dashboard/DashboardData$Builder;
    .locals 0
    .param p1, "category"    # Lcom/android/settingslib/drawer/DashboardCategory;

    .line 276
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    .line 277
    return-object p0
.end method

.method public setConditionExpanded(Z)Lcom/android/settings/dashboard/DashboardData$Builder;
    .locals 0
    .param p1, "expanded"    # Z

    .line 291
    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mConditionExpanded:Z

    .line 292
    return-object p0
.end method

.method public setConditions(Ljava/util/List;)Lcom/android/settings/dashboard/DashboardData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)",
            "Lcom/android/settings/dashboard/DashboardData$Builder;"
        }
    .end annotation

    .line 281
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/conditional/Condition;>;"
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mConditions:Ljava/util/List;

    .line 282
    return-object p0
.end method

.method public setSuggestions(Ljava/util/List;)Lcom/android/settings/dashboard/DashboardData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)",
            "Lcom/android/settings/dashboard/DashboardData$Builder;"
        }
    .end annotation

    .line 286
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/suggestions/Suggestion;>;"
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardData$Builder;->mSuggestions:Ljava/util/List;

    .line 287
    return-object p0
.end method
