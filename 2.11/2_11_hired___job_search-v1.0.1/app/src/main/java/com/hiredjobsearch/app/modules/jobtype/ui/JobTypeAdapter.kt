package com.hiredjobsearch.app.modules.jobtype.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.databinding.RowJobtypeBinding
import com.hiredjobsearch.app.modules.jobtype.`data`.model.JobtypeRowModel
import kotlin.Int
import kotlin.collections.List

class JobTypeAdapter(
  var list: List<JobtypeRowModel>
) : RecyclerView.Adapter<JobTypeAdapter.RowJobtypeVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowJobtypeVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_jobtype,parent,false)
    return RowJobtypeVH(view)
  }

  override fun onBindViewHolder(holder: RowJobtypeVH, position: Int) {
    val jobtypeRowModel = JobtypeRowModel()
    // TODO uncomment following line after integration with data source
    // val jobtypeRowModel = list[position]
    holder.binding.jobtypeRowModel = jobtypeRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<JobtypeRowModel>) {
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
      item: JobtypeRowModel
    ) {
    }
  }

  inner class RowJobtypeVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowJobtypeBinding = RowJobtypeBinding.bind(itemView)
  }
}
