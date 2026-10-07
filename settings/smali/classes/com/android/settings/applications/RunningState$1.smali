.class Lcom/android/settings/applications/RunningState$1;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/RunningState$MergedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/RunningState;

    .line 144
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/RunningState$MergedItem;Lcom/android/settings/applications/RunningState$MergedItem;)I
    .locals 11
    .param p1, "lhs"    # Lcom/android/settings/applications/RunningState$MergedItem;
    .param p2, "rhs"    # Lcom/android/settings/applications/RunningState$MergedItem;

    .line 152
    iget v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    .line 153
    iget v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget-object v1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget v1, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v0, v1, :cond_0

    return v2

    .line 154
    :cond_0
    iget v0, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget-object v1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget v1, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v0, v1, :cond_1

    return v3

    .line 155
    :cond_1
    iget v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    .line 157
    :cond_3
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    const/4 v4, 0x0

    if-ne v0, v1, :cond_6

    .line 158
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    .line 159
    return v4

    .line 161
    :cond_4
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    nop

    :cond_5
    return v2

    .line 163
    :cond_6
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v0, :cond_7

    return v2

    .line 164
    :cond_7
    iget-object v0, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v0, :cond_8

    return v3

    .line 167
    :cond_8
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 169
    .local v0, "lhsInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 171
    .local v1, "rhsInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x190

    if-lt v5, v6, :cond_9

    move v5, v3

    goto :goto_1

    :cond_9
    move v5, v4

    .line 173
    .local v5, "lhsBg":Z
    :goto_1
    iget v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v7, v6, :cond_a

    move v6, v3

    goto :goto_2

    :cond_a
    move v6, v4

    .line 176
    .local v6, "rhsBg":Z
    :goto_2
    if-eq v5, v6, :cond_c

    .line 177
    if-eqz v5, :cond_b

    move v2, v3

    nop

    :cond_b
    return v2

    .line 179
    :cond_c
    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_d

    move v7, v3

    goto :goto_3

    :cond_d
    move v7, v4

    .line 181
    .local v7, "lhsA":Z
    :goto_3
    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_e

    move v8, v3

    goto :goto_4

    :cond_e
    move v8, v4

    .line 184
    .local v8, "rhsA":Z
    :goto_4
    if-eq v7, v8, :cond_10

    .line 185
    if-eqz v7, :cond_f

    goto :goto_5

    :cond_f
    move v2, v3

    :goto_5
    return v2

    .line 188
    :cond_10
    iget v9, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v10, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-eq v9, v10, :cond_12

    .line 189
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-ge v4, v9, :cond_11

    goto :goto_6

    :cond_11
    move v2, v3

    :goto_6
    return v2

    .line 191
    :cond_12
    iget-object v9, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v9, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iget-object v10, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v10, v10, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-ne v9, v10, :cond_13

    .line 192
    return v4

    .line 194
    :cond_13
    iget-object v4, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-nez v4, :cond_14

    return v3

    .line 195
    :cond_14
    iget-object v3, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-nez v3, :cond_15

    return v2

    .line 196
    :cond_15
    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 144
    check-cast p1, Lcom/android/settings/applications/RunningState$MergedItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/RunningState$1;->compare(Lcom/android/settings/applications/RunningState$MergedItem;Lcom/android/settings/applications/RunningState$MergedItem;)I

    move-result p1

    return p1
.end method
