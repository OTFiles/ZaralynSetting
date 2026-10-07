.class Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$1;
.super Ljava/lang/Object;
.source "NbWhiteAppListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/porttapplandshow/AppDataCell;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    .line 137
    iput-object p1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$1;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/settings/porttapplandshow/AppDataCell;Lcom/android/settings/porttapplandshow/AppDataCell;)I
    .locals 5
    .param p1, "dataCell_1"    # Lcom/android/settings/porttapplandshow/AppDataCell;
    .param p2, "dataCell_2"    # Lcom/android/settings/porttapplandshow/AppDataCell;

    .line 140
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$1;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    iget-object v0, v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mPorttAppLandshowPkgNameList:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/settings/porttapplandshow/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 141
    .local v0, "ifind1":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$1;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    iget-object v3, v3, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->mPorttAppLandshowPkgNameList:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/settings/porttapplandshow/AppDataCell;->appPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 142
    .local v3, "ifind2":I
    :goto_1
    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    if-ne v3, v2, :cond_2

    .line 143
    return v4

    .line 144
    :cond_2
    if-eq v0, v2, :cond_3

    if-ne v3, v2, :cond_3

    .line 145
    return v2

    .line 146
    :cond_3
    if-ne v0, v2, :cond_4

    if-eq v3, v2, :cond_4

    .line 147
    return v1

    .line 148
    :cond_4
    if-le v0, v3, :cond_5

    .line 149
    return v1

    .line 150
    :cond_5
    if-ge v0, v3, :cond_6

    .line 151
    return v2

    .line 153
    :cond_6
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 137
    check-cast p1, Lcom/android/settings/porttapplandshow/AppDataCell;

    check-cast p2, Lcom/android/settings/porttapplandshow/AppDataCell;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$1;->compare(Lcom/android/settings/porttapplandshow/AppDataCell;Lcom/android/settings/porttapplandshow/AppDataCell;)I

    move-result p1

    return p1
.end method
