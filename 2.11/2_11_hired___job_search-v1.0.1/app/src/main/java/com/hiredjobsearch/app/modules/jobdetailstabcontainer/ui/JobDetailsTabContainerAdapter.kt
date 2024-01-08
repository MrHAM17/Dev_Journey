package com.hiredjobsearch.app.modules.jobdetailstabcontainer.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.databinding.RowJobdetailstabcontainerBinding
import com.hiredjobsearch.app.modules.jobdetailstabcontainer.`data`.model.JobdetailstabcontainerRowModel
import kotlin.Int
import kotlin.collections.List

class JobDetailsTabContainerAdapter(
  var list: List<JobdetailstabcontainerRowModel>
) : RecyclerView.Adapter<JobDetailsTabContainerAdapter.RowJobdetailstabcontainerVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowJobdetailstabcontainerVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_jobdetailstabcontainer,parent,false)
    return RowJobdetailstabcontainerVH(view)
  }

  override fun onBindViewHolder(holder: RowJobdetailstabcontainerVH, position: Int) {
    val jobdetailstabcontainerRowModel = JobdetailstabcontainerRowModel()
    // TODO uncomment following line after integration with data source
    // val jobdetailstabcontainerRowModel = list[position]
    holder.binding.jobdetailstabcontainerRowModel = jobdetailstabcontainerRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<JobdetailstabcontainerRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: JobdetailstabcontainerRowModel
    ) {
    }
  }

  inner class RowJobdetailstabcontainerVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowJobdetailstabcontainerBinding = RowJobdetailstabcontainerBinding.bind(itemView)
  }
}
