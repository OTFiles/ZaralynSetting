.class public Lcom/readboy/provider/mhc/info/UserBaseInfo;
.super Ljava/lang/Object;
.source "UserBaseInfo.java"


# instance fields
.field public bean:I

.field public birthDay:I

.field public birthMonth:I

.field public birthYear:I

.field public cityId:I

.field public cityStr:Ljava/lang/String;

.field public class_token:Ljava/lang/String;

.field public credits:I

.field public districtId:I

.field public districtStr:Ljava/lang/String;

.field public gender:I

.field public genderStr:Ljava/lang/String;

.field public gradeInt:I

.field public gradeOrg:I

.field public gradeStr:Ljava/lang/String;

.field public localId:I

.field public mobile:Ljava/lang/String;

.field public money:I

.field public passWord:Ljava/lang/String;

.field public photoUri:Ljava/lang/String;

.field public provId:I

.field public provStr:Ljava/lang/String;

.field public realName:Ljava/lang/String;

.field public regdate:J

.field public schoolId:I

.field public schoolName:Ljava/lang/String;

.field public stage:I

.field public token:Ljava/lang/String;

.field public tokenExpire:J

.field public uid:I

.field public uidParent:Ljava/lang/String;

.field public uidStr:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->photoUri:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->credits:I

    .line 62
    iput v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->localId:I

    .line 65
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->regdate:J

    .line 107
    iput v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->stage:I

    .line 110
    iput v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->schoolId:I

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->schoolName:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public getUidParent()Ljava/lang/String;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uidParent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uidParent:Ljava/lang/String;

    .local v0, "uid":Ljava/lang/String;
    goto :goto_0

    .line 156
    .end local v0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .restart local v0
    :goto_0
    return-object v0
.end method

.method public getUidStr()Ljava/lang/String;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uidStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uidStr:Ljava/lang/String;

    .local v0, "uid":Ljava/lang/String;
    goto :goto_0

    .line 147
    .end local v0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .restart local v0
    :goto_0
    return-object v0
.end method

.method public isCurrentSubMember()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uidStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uidParent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uidStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uidParent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPreGrade()Z
    .locals 2

    .line 170
    iget v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeOrg:I

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeOrg:I

    const/16 v1, 0x200

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n userName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n realName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->realName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n gradeStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n gradeInt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeInt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n birthYear = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->birthYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n birthMonth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->birthMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n birthDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->birthDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n genderStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->genderStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n mobile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n provStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->provStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n provId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->provId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n cityStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->cityStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n cityId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->cityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n schoolName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->schoolName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n schoolId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->schoolId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n stage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->stage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method
