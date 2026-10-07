.class public Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;
.super Ljava/lang/Object;
.source "SemesterTimeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readboy/provider/semester/bean/SemesterTimeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;
    }
.end annotation


# instance fields
.field private date:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;",
            ">;"
        }
    .end annotation
.end field

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;->date:Ljava/util/List;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;->year:I

    return v0
.end method

.method public setDate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;",
            ">;)V"
        }
    .end annotation

    .line 248
    .local p1, "date":Ljava/util/List;, "Ljava/util/List<Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean$DateBean;>;"
    iput-object p1, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;->date:Ljava/util/List;

    .line 249
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .line 240
    iput p1, p0, Lcom/readboy/provider/semester/bean/SemesterTimeData$DataBean;->year:I

    .line 241
    return-void
.end method
