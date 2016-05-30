import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Bug {
	private String bugNo;
	private int filesCount;
	private List<Bug> childs;
	private boolean isParent;
	private Map<String,ArrayList<String>>branchFilesMap;
	
	
	
	Bug(String bugNo){
		this.bugNo=bugNo;
	}
	
	
	
	public String getBugNo() {
		return bugNo;
	}
	
	public Map<String, ArrayList<String>> getBranchFilesMap() {
		return branchFilesMap;
	}
	public void setBranchFilesMap(Map<String, ArrayList<String>> branchFilesMap) {
		this.branchFilesMap = branchFilesMap;
	}
	public int getFilesCount() {
		return filesCount;
	}
	public void setFilesCount(int filesCount) {
		this.filesCount = filesCount;
	}
	public List<Bug> getChilds() {
		return childs;
	}
	public void setChilds(List<Bug> childs) {
		this.childs = childs;
	}
	public boolean isParent() {
		return isParent;
	}
	public void setParent(boolean isParent) {
		this.isParent = isParent;
	}

	
	
	@Override
	public String toString() {
		return "Bug [bugNo=" + bugNo + ", filesCount=" + filesCount + ", childs=" + childs + ", isParent=" + isParent
				+ ", branchFilesMap=" + branchFilesMap + "]";
	}

	

	

}